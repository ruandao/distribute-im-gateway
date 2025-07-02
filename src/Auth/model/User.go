package model

import (
	"github.com/ruandao/distribute-im-gateway/pkg/lib"
	"golang.org/x/crypto/bcrypt"
	"gorm.io/gorm"
)

type User struct {
	gorm.Model
	UserName         string
	UserPasswordHash string `json:"-"`
}

func NewUser(userName string, userPassword string) (*User, error) {
	user := &User{UserName: userName}
	password := []byte(userPassword)

	// 生成哈希值，cost 为 14
	hashedPassword, err := bcrypt.GenerateFromPassword(password, 14)
	if err != nil {
		return user, lib.NewXError(err, "")
	}
	user.UserPasswordHash = string(hashedPassword)
	return user, nil
}

func (user *User) ValidatePassword(password string) bool {
	// 验证密码
	if err := bcrypt.CompareHashAndPassword([]byte(user.UserPasswordHash), []byte(password)); err != nil {
		return false
	}
	return true
}
