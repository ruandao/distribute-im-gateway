package handler

import (
	"context"
	"encoding/json"
	"io"
	"net/http"

	"github.com/ruandao/distribute-im-gateway/pkg/lib"
	"github.com/ruandao/distribute-im-gateway/src/Auth/middleware"
	"github.com/ruandao/distribute-im-gateway/src/Auth/model"
)

type UserDTO struct {
	UserName     string `json:"username"`
	UserPassword string `json:"password"`
}

var registerUser middleware.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request) (nCtx context.Context, runNext bool) {
	defer r.Body.Close()
	bodyData, err := io.ReadAll(r.Body)
	if err != nil {
		w.Write([]byte("body error"))
		return ctx, false
	}

	userDTO := &UserDTO{}
	if err := json.Unmarshal(bodyData, userDTO); err != nil {
		w.Write([]byte("body parse error"))
		return ctx, false
	}

	user, err := model.NewUser(userDTO.UserName, userDTO.UserPassword)
	if err != nil {
		w.Write([]byte("password generate fail"))
		return ctx, false
	}
	db, err := lib.GetDB()
	if err != nil {
		w.Write([]byte("Connect DB Failed"))
		return ctx, false
	}
	result := db.Create(user)
	if result.Error != nil {
		w.Write([]byte("Update data to db failed!"))
		return ctx, false
	}
	w.Write([]byte("create user success"))
	return ctx, false
}
