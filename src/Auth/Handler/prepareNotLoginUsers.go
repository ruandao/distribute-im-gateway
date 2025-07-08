package handler

import (
	"context"
	"fmt"
	"strconv"
	"sync"
	"sync/atomic"
	"time"

	"github.com/go-redis/redis/v8"
	"github.com/ruandao/distribute-im-gateway/pkg/lib"
	"github.com/ruandao/distribute-im-gateway/pkg/lib/logx"

	"github.com/ruandao/distribute-im-gateway/src/Auth/model"
	"gorm.io/gorm"
)

var MakeUserLogin = func(ctx context.Context, users []*model.User) error {
	rCli := lib.GetRedisClient()
	var arr []*redis.Z = make([]*redis.Z, 0, 2*len(users))
	for _, user := range users {
		z := &redis.Z{
			Score:  float64(time.Now().Unix()),
			Member: user.Uuid,
		}
		arr = append(arr, z)
	}
	statCmd := rCli.ZAdd(ctx, "loginStatus", arr...)
	if statCmd.Err() != nil {
		return lib.NewXError(statCmd.Err(), "标记用户为登录失效")
	}
	return nil
}

var MakeUserNotLogin = func(ctx context.Context, users []*model.User) error {
	rCli := lib.GetRedisClient()
	var arr []*redis.Z = make([]*redis.Z, 0, 2*len(users))
	var mSetArr []any
	for _, user := range users {
		z := &redis.Z{
			Score:  -1,
			Member: user.Uuid,
		}
		arr = append(arr, z)
		mSetArr = append(mSetArr, user.Uuid, fmt.Sprintf("t: %v v: %v", user.TableName(), user))
	}
	statCmd := rCli.ZAdd(ctx, "loginStatus", arr...)
	if statCmd.Err() != nil {
		return lib.NewXError(statCmd.Err(), "标记用户为未登录失效")
	}
	rCli.HMSet(ctx, "uuid", mSetArr...)
	return nil
}

var findUserByUUID = func(_ context.Context, uuidList []string) ([]*model.User, error) {
	db, err := lib.GetDB()
	if err != nil {
		return nil, lib.NewXError(err, "连接数据库失败")
	}
	var users []*model.User
	for _, uuidStr := range uuidList {
		uuid, _ := strconv.Atoi(uuidStr)
		users = append(users, &model.User{Uuid: int64(uuid)})
	}
	userBatchArr := model.NewUserBatchArr(users)
	var retArr []*model.User
	for _, userBatch := range userBatchArr {
		var arr []*model.User
		statCmd := db.Debug().Table(userBatch.TableName).Find(&arr, "uuid IN ?", userBatch.UUIDs())
		if statCmd.Error != nil {
			return retArr, lib.NewXError(statCmd.Error, "查询用户失败")
		}

		logx.Infof("batch: %v uuids: %v arr: %v\n", userBatch.Users, userBatch.UUIDs(), arr)
		retArr = append(retArr, arr...)
	}

	return retArr, nil
}

var LoadAllUser_to_NotLoginStatus = func(ctx context.Context, force bool) {
	rCli := lib.GetRedisClient()
	if !force {
		result, err := rCli.Exists(ctx, "loginStatus").Result()
		if err != nil {
			return

		}
		if result == 1 {
			return
		}
	}

	rCli.Del(ctx, "loginStatus")
	rCli.Del(ctx, "uuid")
	defer func() {
		rCli.Expire(ctx, "loginStatus", time.Hour*12)
		rCli.Expire(ctx, "uuid", time.Hour*12)
	}()

	db, err := lib.GetDB()
	if err != nil {
		logx.Fatal(lib.NewXError(err, "连接数据库失败"))
	}

	loadCnt := int32(0)
	totalCnt := int32(0)
	ctx, cancel := lib.TickerRun(ctx, time.NewTicker(time.Second), func() {
		logx.Infof("totalCnt: %v loadCnt: %v\n", totalCnt, loadCnt)
	})
	wg := sync.WaitGroup{}
	for tableIdx := 0; tableIdx < 256; tableIdx++ {
		wg.Add(1)
		go func(tableIdx int) {
			tableName := fmt.Sprintf("users_%03d", tableIdx)
			tableCnt := int64(0)
			atomic.AddInt32(&totalCnt, int32(tableCnt))
			tx := db.Table(tableName).Count(&tableCnt)
			if tx.Error != nil {
				logx.Fatal(lib.NewXError(tx.Error, "数据库计数失败"))
			}
			for _loadCnt := 0; _loadCnt < int(tableCnt); _loadCnt += 100 {
				var users []*model.User
				db.Table(tableName).Order("created_at ASC").Offset(_loadCnt).Limit(100).FindInBatches(&users, 100, func(tx *gorm.DB, batch int) error {
					MakeUserNotLogin(ctx, users)
					atomic.AddInt32(&loadCnt, int32(len(users)))
					return nil
				})
			}
			wg.Done()
		}(tableIdx)
	}
	wg.Wait()
	cancel()
}
