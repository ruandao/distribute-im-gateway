package handler

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"runtime"
	"sync"
	"sync/atomic"
	"time"

	"github.com/go-redis/redis/v8"
	"github.com/ruandao/distribute-im-gateway/pkg/config"
	"github.com/ruandao/distribute-im-gateway/pkg/lib"
	"github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	middlewareLib "github.com/ruandao/distribute-im-gateway/pkg/middlewareLib"

	"github.com/ruandao/distribute-im-gateway/src/Auth/model"

	"github.com/bwmarrin/snowflake"
)

type UserDTO struct {
	UserName     string `json:"username"`
	UserPassword string `json:"password"`
}

var registerUser middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()
	bodyData, err := io.ReadAll(r.Body)
	if err != nil {
		w.Write([]byte("body error"))
		return
	}

	userDTO := &UserDTO{}
	if err := json.Unmarshal(bodyData, userDTO); err != nil {
		w.Write([]byte("body parse error"))
		return
	}

	user, err := model.NewUser(fmt.Sprintf("%v_%v", userDTO.UserName, lib.GetUuid()), userDTO.UserPassword)
	if err != nil {
		w.Write([]byte("password generate fail"))
		return
	}
	db, err := lib.GetDB()
	if err != nil {
		w.Write([]byte("Connect DB Failed"))
		return
	}
	result := db.Create(user)
	if result.Error != nil {
		w.Write([]byte("Update data to db failed!"))
		return
	}
	w.Write([]byte("create user success"))
}

// 单行进行写入, 单机性能 TPS 在 1200/s
var multipleCreateUser middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()
	bodyData, err := io.ReadAll(r.Body)
	if err != nil {
		w.Write([]byte("body read error"))
		return
	}

	bodyMap := map[string]interface{}{}
	if err := json.Unmarshal(bodyData, &bodyMap); err != nil {
		w.Write([]byte("body parse error"))
		return
	}
	size := int(bodyMap["size"].(float64))
	totalCnt := int(bodyMap["totalCnt"].(float64))

	db, err := lib.GetDB()
	if err != nil {
		w.Write([]byte("connect db failed"))
		return
	}
	// 计算总记录数
	var count int64

	result := db.Model(&model.User{}).Count(&count)
	if result.Error != nil {
		w.Write([]byte("failed to count records"))
		return
	}

	startTime := time.Now()

	cntCh := make(chan int64, 10000)
	userCh := make(chan *model.User, 100)
	wgForCnt := &sync.WaitGroup{}

	for i := 0; i < runtime.NumCPU()*5; i++ {
		wgForCnt.Add(1)
		go func() {
			for cnt := range cntCh {
				// sTime := time.Now()

				userName := fmt.Sprintf("user_%v", count+cnt)
				user, _ := model.NewUser(userName, "pwd123")

				// nowTime := time.Now()
				// totalDuration := nowTime.Sub(startTime)
				// calPwdDuration := nowTime.Sub(sTime)
				// logx.Infof("create user %v totalDuration %v calPasswordCostTime: %v cntChLen: %v userChLen:%v \n", user.UserName, totalDuration, calPwdDuration, len(cntCh), len(userCh))
				userCh <- user
			}
			wgForCnt.Done()
		}()
	}
	wgForSql := &sync.WaitGroup{}

	tpsPrefix := "tps[]"

	tps := int32(0)
	onFlyTPS := int32(0)
	_, cancel := lib.TickerRun(ctx, time.NewTicker(time.Second), func() {
		xTPS := atomic.SwapInt32(&tps, 0)
		tpsPrefix = fmt.Sprintf("tps[%v/%v]", xTPS, onFlyTPS)
	})

	totalCreateUserAtomic := int32(0)
	for i := 0; i < size; i++ {
		wgForSql.Add(1)
		go func() {
			for user := range userCh {
				sTime := time.Now()
				atomic.AddInt32(&onFlyTPS, 1)
				result := db.Create(user)
				if result.Error != nil {
					w.Write([]byte(fmt.Sprintf("create user %v fail\n", user.UserName)))
					continue
				}

				atomic.AddInt32(&totalCreateUserAtomic, 1)
				atomic.AddInt32(&onFlyTPS, -1)
				atomic.AddInt32(&tps, 1)
				nowTime := time.Now()
				totalDuration := nowTime.Sub(startTime)
				sqlDuration := nowTime.Sub(sTime)
				logx.Infof("%vcreate user %v totalDuration %v sqlCostTime: %v cntChLen: %v userChLen:%v\n", tpsPrefix, user.UserName, totalDuration, sqlDuration, len(cntCh), len(userCh))
			}
			wgForSql.Done()
		}()
	}

	var cnt int64 = 0
	for cnt < int64(totalCnt) {
		cnt++
		cntCh <- cnt
	}

	close(cntCh)
	wgForCnt.Wait()

	close(userCh)
	wgForSql.Wait()
	cancel()

	endTime := time.Now()
	duration := endTime.Sub(startTime)
	w.Write([]byte(fmt.Sprintf("cost time %v seconds to create %v users\n", duration, cnt)))

	totalTPS := totalCnt / int(duration/time.Second)
	// LoadAllUser_to_NotLoginStatus(ctx, true)
	msg := fmt.Sprintf("Cost time %v seconds to create %v users success(%v), %v TPS\n", duration, cnt, totalCreateUserAtomic, totalTPS)
	logx.Info(msg)
	fmt.Fprint(w, msg)
	logx.Info("multipleCreateUser")
}

// 批量进行写入
var batchCreateUser middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()

	bodyData, err := io.ReadAll(r.Body)
	if err != nil {
		w.Write([]byte("body error"))
		return
	}

	bodyMap := map[string]interface{}{}
	if err := json.Unmarshal(bodyData, &bodyMap); err != nil {
		w.Write([]byte("body parse error"))
		return
	}
	batchSize := int(bodyMap["batchSize"].(float64))
	concurrencySize := int(bodyMap["concurrencySize"].(float64))
	totalCnt := int(bodyMap["totalCnt"].(float64))

	db, err := lib.GetDB()
	if err != nil {
		w.Write([]byte("connect db failed"))
		return
	}

	tps := int32(0)
	onFlyTPS := int32(0)
	tpsPrefix := "[]"
	_, cancel := lib.TickerRun(ctx, time.NewTicker(time.Second), func() {
		xTPS := atomic.SwapInt32(&tps, 0)
		tpsPrefix = fmt.Sprintf("tps[%v/%v]", xTPS, onFlyTPS)
	})
	// 计算总记录数
	startTime := time.Now()

	cntCh := make(chan int64, 10000)
	wgForCnt := &sync.WaitGroup{}

	userCh := make(chan *model.User, 100)
	wgForUser := &sync.WaitGroup{}

	userBatchCh := make(chan *model.UserBatch, 10)
	wgForUserBatch := &sync.WaitGroup{}
	sid := lib.GetUuid()

	for i := 0; i < runtime.NumCPU()*5; i++ {
		wgForCnt.Add(1)
		go func() {
			for cnt := range cntCh {
				sTime := time.Now()

				userName := fmt.Sprintf("user_%v_%v", sid, cnt)
				user, _ := model.NewUser(userName, "pwd123")

				nowTime := time.Now()
				totalDuration := nowTime.Sub(startTime)
				calPwdDuration := nowTime.Sub(sTime)
				logx.Infof("create user %v totalDuration %v calPasswordCostTime: %v cntChLen: %v userChLen:%v userArrChLen:%v \n", user.UserName, totalDuration, calPwdDuration, len(cntCh), len(userCh), len(userBatchCh))
				userCh <- user
			}
			wgForCnt.Done()
		}()
	}

	for i := 0; i < runtime.NumCPU(); i++ {
		wgForUser.Add(1)
		go func() {
			defer func() {
				wgForUser.Done()
			}()
			userArrMap := make(map[string][]*model.User)

			tickerCh := time.Tick(time.Second)
			var sendAllFunc = func() {
				for tableName, arr := range userArrMap {
					if tableName != "" && len(arr) > 0 {
						userBatch := model.NewUserBatch(arr)
						userBatchCh <- userBatch
					}
				}
				userArrMap = make(map[string][]*model.User)
			}
			chIsOpen := true
			for {
				if !chIsOpen {
					break
				}
				select {
				case user, open := <-userCh:
					chIsOpen = open
					if !open {
						break
					}

					arr := userArrMap[user.TableName()]
					arr = append(arr, user)
					if len(arr) >= batchSize {
						userBatchCh <- model.NewUserBatch(arr)
						arr = nil
					}
					userArrMap[user.TableName()] = arr
				case <-tickerCh:
					sendAllFunc()
				}

			}
			sendAllFunc()

		}()
	}

	var totalCreateUserAtomic int32 = 0
	for i := 0; i < concurrencySize; i++ {
		wgForUserBatch.Add(1)
		go func() {
			defer func() {
				wgForUserBatch.Done()
			}()
			for userBatch := range userBatchCh {
				sTime := time.Now()

				sql, values := userBatch.BatchInsertSQL()
				atomic.AddInt32(&onFlyTPS, 1)
				// 执行原生SQL
				statusCmd := db.Exec(sql, values...)
				atomic.AddInt32(&onFlyTPS, -1)
				atomic.AddInt32(&tps, 1)
				if statusCmd.Error != nil {
					logx.Errorf("\ntable: %v\nsql: %v values: %v userBatch: %v err: %v\n", userBatch.TableName, sql, values, userBatch, lib.NewXError(statusCmd.Error, "批量插入失败"))
				} else {
					count := statusCmd.RowsAffected
					atomic.AddInt32(&totalCreateUserAtomic, int32(count))

					nowTime := time.Now()
					totalDuration := nowTime.Sub(startTime)
					sqlDuration := nowTime.Sub(sTime)
					logx.Infof("%vcreate %v users totalDuration %v sqlCostTime: %v cntChLen: %v userChLen:%v userBatchChLen:%v \n", tpsPrefix, count, totalDuration, sqlDuration, len(cntCh), len(userCh), len(userBatchCh))
				}

			}

		}()
	}

	var cnt int = 0
	for cnt < totalCnt {
		cnt++
		cntCh <- int64(cnt)
	}

	close(cntCh)
	wgForCnt.Wait()

	close(userCh)
	wgForUser.Wait()

	close(userBatchCh)
	wgForUserBatch.Wait()

	cancel()
	endTime := time.Now()
	duration := endTime.Sub(startTime)

	totalTPS := cnt / int(duration/time.Second)
	// LoadAllUser_to_NotLoginStatus(ctx, true)
	msg := fmt.Sprintf("Cost time %v seconds to create %v users success(%v), %v TPS\n", duration, cnt, totalCreateUserAtomic, totalTPS)
	logx.Info(msg)
	fmt.Fprint(w, msg)
	logx.Info("batchCreateUserDone")
}

var userLoginSessionDuration = time.Minute * 10
var loginUser middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()

	bodyData, err := io.ReadAll(r.Body)
	if err != nil {
		w.Write([]byte("body error"))
		return
	}

	userDTO := &UserDTO{}
	if err := json.Unmarshal(bodyData, userDTO); err != nil {
		w.Write([]byte("body parse error"))
		return
	}

	db, err := lib.GetDB()
	if err != nil {
		w.Write([]byte("Connect DB Failed"))
		return
	}
	user := &model.User{UserName: userDTO.UserName}
	result := db.First(&user)
	if result.Error != nil {
		w.Write([]byte("user name or password error!"))
		return
	}
	if !user.ValidatePassword(userDTO.UserPassword) {
		w.Write([]byte("user name or password error!"))
		return
	}

	// 创建节点，参数为机器ID，范围0-1023
	node, _ := snowflake.NewNode(1)
	// 生成ID
	// sessionID := node.Generate()
	cookieID := node.Generate()
	// 将 cookieID 写到redis
	redisCli := lib.GetRedisClient()

	cookie, err := r.Cookie("cookieID")
	if err != nil {
		logx.Infof("get cookie fail: %v\n", err)
	} else {
		// 踢出已登陆用户
		statusCmd := redisCli.Del(ctx, fmt.Sprintf("c_%v", cookie.Value))
		logx.Infof("del cookie: %v err: %v\n", cookie.Value, statusCmd.Err())
	}

	statusCmd := redisCli.Set(ctx, fmt.Sprintf("c_%v", cookieID), config.WriteIntoJSONIndent(user), userLoginSessionDuration)
	MakeUserLogin(ctx, []*model.User{user})
	if statusCmd.Err() != nil {
		logx.Errorf("设置Cookie失败 %v\n", statusCmd.Err())
		return
	}

	// 创建一个新的Cookie
	cookie = &http.Cookie{
		Name:    "cookieID",                     // Cookie名称
		Value:   fmt.Sprintf("%v", cookieID),    // Cookie值
		Path:    "/",                            // 路径，对所有路径有效
		Expires: time.Now().Add(24 * time.Hour), // 有效期24小时
		MaxAge:  86400,                          // 有效期（秒），与Expires类似
	}

	// 将Cookie添加到响应头
	http.SetCookie(w, cookie)
	fmt.Fprintf(w, "%v", config.WriteIntoJSONIndent(user))
}

var getNotLoginRandomUser middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()

	bodyData, err := io.ReadAll(r.Body)
	if err != nil {
		w.Write([]byte("body error"))
		return
	}
	m := make(map[string]any)
	if err := json.Unmarshal(bodyData, &m); err != nil {
		logx.Errorf("body解析失败: %v %v", bodyData, err)
		w.Write([]byte("body 解析失败"))
		return
	}
	count := int64(m["count"].(float64))

	userDTO := &UserDTO{}
	if err := json.Unmarshal(bodyData, userDTO); err != nil {
		w.Write([]byte("body parse error"))
		return
	}
	rCli := lib.GetRedisClient()
	// 获取分数小于50的元素（按分数升序排列）
	// 使用 "-inf" 表示负无穷，"(50" 表示小于50（不包含50）
	queryCond := &redis.ZRangeBy{
		Min:   "-inf",
		Max:   fmt.Sprintf("(%v", time.Now().Add(-userLoginSessionDuration).Unix()), // 登陆时间在 session 之前的用户
		Count: count,
	}
	uuidList, err := rCli.ZRangeByScore(ctx, "loginStatus", queryCond).Result()
	if err != nil {
		logx.Errorf("查询未登录数据失败 %v %v", queryCond, err)
	}

	users, err := findUserByUUID(ctx, uuidList)
	// logx.Infof("uuidList: %v users: %v\n", uuidList, users)
	if err != nil {
		logx.Errorf("查询用户失败: %v %v", users, err)
		w.Write([]byte("查询用户失败"))
		return
	}
	ret := map[string]any{
		"uuid":  uuidList,
		"users": users,
	}
	fmt.Fprintf(w, "%v", config.WriteIntoJSONIndent(ret))
}

var reInitNotLoginSet middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()
	LoadAllUser_to_NotLoginStatus(ctx, true)
	w.Write([]byte("reload done"))
}

var queryUser middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()
	// 将 cookieID 写到redis
	redisCli := lib.GetRedisClient()

	cookie, err := r.Cookie("cookieID")
	if err != nil {
		logx.Infof("get cookie fail: %v\n", err)
		return
	}
	statusCmd := redisCli.Get(ctx, fmt.Sprintf("c_%v", cookie.Value))
	if statusCmd.Err() != nil {
		logx.Infof("query user fail %v", statusCmd.Err())
		return
	}
	val := statusCmd.Val()
	logx.Infof("redisData: %v\n", val)
	user := &model.User{}
	err = config.ReadFromJSON([]byte(val), user)
	if err != nil {
		logx.Infof("query user fail %v\n", err)
		return
	}
	w.Write([]byte(val))
}
