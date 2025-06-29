package handler

import (
	"net/http"
)

// 认证中间件
var authHandler = func(w http.ResponseWriter, r *http.Request) bool {
	defer r.Body.Close()
	w.Write([]byte("hello world!!!"))

	return false

	// config, xerr := config.Load()
	// if xerr != nil {
	// 	logx.Fatal(xerr)
	// }
	// ctx := traffic.NewContext(config.TrafficConfig, r)
	// conn, xerr := traffic.GetRPCClient(config.AuthAddr, ctx)
	// if xerr != nil {
	// 	logx.Errorf("%v", xerr)
	// 	return false
	// }

	// authRequest := &pb_auth.Request{}
	// client := pb_auth.NewAuthClient(conn)
	// res, err := client.Check(ctx, authRequest)
	// if err != nil {
	// 	w.Write([]byte("not auth"))
	// 	return false
	// }
	// return res.Result.Result
}
