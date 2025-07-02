package handler

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"time"

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

	user, err := model.NewUser(userDTO.UserName, userDTO.UserPassword)
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
	return
}

var batchCreateUser middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()

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

	var cnt int64 = 0
	for cnt < 10000 {
		cnt += 100

		userName := fmt.Sprintf("user_%v", count+cnt)
		user, _ := model.NewUser(userName, userName)
		result := db.Create(user)
		if result.Error != nil {
			w.Write([]byte(fmt.Sprintf("create user %v fail", userName)))
			return
		}
	}
	endTime := time.Now()
	duration := endTime.Sub(startTime)
	w.Write([]byte(fmt.Sprintf("cost time %v seconds to create %v users\n", duration/time.Second, cnt)))
	return
}

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

	statusCmd := redisCli.Set(ctx, fmt.Sprintf("c_%v", cookieID), config.WriteIntoJSONIndent(user), time.Hour*24)
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
	w.Write([]byte("user login success"))
	return
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
	return
}
