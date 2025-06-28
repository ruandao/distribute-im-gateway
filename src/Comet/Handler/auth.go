package handler

import (
	"net/http"

	"github.com/ruandao/distribute-im-gateway/src/traffic"

	config "github.com/ruandao/distribute-im-gateway/src/Comet/Config"
	"github.com/ruandao/distribute-im-gateway/src/Comet/service/gen/pb_auth"
	"github.com/ruandao/distribute-im-gateway/src/lib/logx"
)

// 认证中间件
var authHandler = func(w http.ResponseWriter, r *http.Request) bool {
	defer r.Body.Close()
	w.Write([]byte("hello world!!!"))

	config, xerr := config.Load()
	if xerr != nil {
		logx.Fatal(xerr)
	}
	ctx := traffic.NewContext(config.TrafficConfig, r)
	conn, xerr := traffic.GetRPCClient(config.AuthAddr, ctx)
	if xerr != nil {
		logx.Errorf("%v", xerr)
		return false
	}

	authRequest := &pb_auth.Request{}
	client := pb_auth.NewAuthClient(conn)
	res, err := client.Check(ctx, authRequest)
	if err != nil {
		w.Write([]byte("not auth"))
		return false
	}
	return res.Result.Result
}
