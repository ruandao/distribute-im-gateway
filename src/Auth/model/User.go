package model

import (
	"fmt"
	"strings"

	"github.com/ruandao/distribute-im-gateway/pkg/lib"
	"github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	"gorm.io/gorm"
)

type User struct {
	gorm.Model
	Region           string
	Uuid             int64
	UserName         string
	UserPasswordHash string `json:"-"`
}

type UserBatch struct {
	TableName string
	Users     []*User
}

func NewUserBatchArr(userArr []*User) []*UserBatch {
	m := make(map[string][]*User)
	for _, user := range userArr {
		m[user.TableName()] = append(m[user.TableName()], user)
	}
	var userBatchArr []*UserBatch
	for _, userArr := range m {
		userBatchArr = append(userBatchArr, NewUserBatch(userArr))
	}
	return userBatchArr
}

func NewUserBatch(userArr []*User) *UserBatch {
	if userArr == nil {
		return nil
	}
	batchUser := &UserBatch{}
	for _, user := range userArr {
		if user == nil {
			continue
		}
		if batchUser.TableName == "" {
			batchUser.TableName = user.TableName()
		}
		if batchUser.TableName != user.TableName() {
			err := fmt.Errorf("%v", userArr)
			logx.Fatal(lib.NewXError(err, "user not in same table"))
		}
		batchUser.Users = append(batchUser.Users, user)
	}
	return batchUser
}
func (batchUser *UserBatch) UUIDs() []int64 {
	var uuids []int64 = make([]int64, 0, len(batchUser.Users))
	for _, user := range batchUser.Users {
		uuids = append(uuids, user.Uuid)
	}
	return uuids
}
func (batchUser *UserBatch) BatchInsertSQL() (string, []any) {
	// 构建批量插入的SQL语句
	var values []any
	var valueStrings []string
	for _, user := range batchUser.Users {

		valueStrings = append(valueStrings, "(?, ?, ?, ?)")
		// logx.Infof("user: %v\n", user)
		values = append(values, user.UserName, user.UserPasswordHash, user.Region, user.Uuid)
	}

	sql := fmt.Sprintf("INSERT INTO "+batchUser.TableName+" (user_name, user_password_hash, region, uuid) VALUES %s",
		strings.Join(valueStrings, ", "))

	return sql, values
}

func NewUser(userName string, userPassword string) (*User, error) {
	user := &User{Uuid: lib.GetUuid(), UserName: userName}

	// cost too many time, let's ignore it, when we do demo
	// password := []byte(userPassword)
	// // 生成哈希值，cost 为 14
	// hashedPassword, err := bcrypt.GenerateFromPassword(password, 14)
	// if err != nil {
	// 	return user, lib.NewXError(err, "")
	// }
	// user.UserPasswordHash = string(hashedPassword)
	user.UserPasswordHash = userPassword
	return user, nil
}

// 手动指定表名
func (user *User) TableName() string {
	return fmt.Sprintf("users_%03d", user.Uuid%256)
}
func (user *User) ValidatePassword(password string) bool {
	// 验证密码
	// if err := bcrypt.CompareHashAndPassword([]byte(user.UserPasswordHash), []byte(password)); err != nil {
	// 	return false
	// }
	if user.UserPasswordHash != password {
		return false
	}
	return true
}
