package middleware

import (
	"context"
	"net/http"

	"github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	middlewareLib "github.com/ruandao/distribute-im-gateway/pkg/middlewareLib"
	configLib "github.com/ruandao/distribute-im-gateway/src/Auth/config"
	"github.com/ruandao/distribute-im-gateway/src/Auth/service/gen/pb_auth"

	"github.com/ruandao/distribute-im-gateway/pkg/traffic"
)

// 认证中间件
var AuthHandler middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()
	// hj, _ := w.(http.Hijacker)
	// conn, buf, _ := hj.Hijack()
	// defer conn.Close()
	// buf.WriteString("hi websocket conn")
	// buf.Flush()
	conn, xerr := traffic.GetRPCClient(ctx, configLib.CONST_BUSINESS_AUTH)
	if xerr != nil {
		logx.Errorf("%v", xerr)
		return
	}

	authRequest := &pb_auth.Request{}
	client := pb_auth.NewAuthServiceClient(conn)
	res, err := client.Check(ctx, authRequest)
	if err != nil {
		w.Write([]byte("not auth"))
		return
	}
	if res.Result.Result {
		nextF(ctx, w, r)
	}
}
