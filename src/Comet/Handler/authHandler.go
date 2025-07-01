package handler

import (
	"context"
	"net/http"

	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
	"github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	configLib "github.com/ruandao/distribute-im-gateway/src/Comet/config"
	"github.com/ruandao/distribute-im-gateway/src/Comet/service/gen/pb_auth"

	"github.com/ruandao/distribute-im-gateway/pkg/traffic"
)

// 认证中间件
var authHandler = func(ctx context.Context, w http.ResponseWriter, r *http.Request) (nCtx context.Context, runNext bool) {
	defer r.Body.Close()
	// hj, _ := w.(http.Hijacker)
	// conn, buf, _ := hj.Hijack()
	// defer conn.Close()
	// buf.WriteString("hi websocket conn")
	// buf.Flush()

	reqTag := ctx.Value("TrafficTag")
	authEndPoints := xConfLib.ReadRouteEndPoints(reqTag, configLib.CONST_AUTH_Business)
	trafficConfig := traffic.NewConfig("", authEndPoints)
	ctx = traffic.NewContext(trafficConfig, ctx)
	conn, xerr := traffic.GetRPCClient(trafficConfig, ctx)
	if xerr != nil {
		logx.Errorf("%v", xerr)
		return ctx, false
	}

	authRequest := &pb_auth.Request{}
	client := pb_auth.NewAuthServiceClient(conn)
	res, err := client.Check(ctx, authRequest)
	if err != nil {
		w.Write([]byte("not auth"))
		return ctx, false
	}
	return ctx, res.Result.Result
}
