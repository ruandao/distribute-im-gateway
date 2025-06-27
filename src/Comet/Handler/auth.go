package handler

import (
	"net/http"

	"github.com/ruandao/distribute-im-gateway/src/traffic"

	config "github.com/ruandao/distribute-im-gateway/src/Comet/Config"
	logx "github.com/ruandao/distribute-im-gateway/src/Comet/Logx"
	"github.com/ruandao/distribute-im-gateway/src/Comet/service/gen/pb_auth"
)

// 认证中间件
var authHandler = func(w http.ResponseWriter, r *http.Request) {
	defer r.Body.Close()
	w.Write([]byte("hello world!!!"))

	config, _ := config.Load()
	ctx := traffic.NewContext(config.TrafficConfig, r)
	conn, err := traffic.GetRPCClient(config.AuthAddr, ctx)
	if err != nil {
		logx.Error(err)
	}

	authRequest := &pb_auth.Request{}
	client := pb_auth.NewAuthClient(conn)
	res, err := client.Check(ctx, authRequest)

}
