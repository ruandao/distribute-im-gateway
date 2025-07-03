package handler

import (
	"context"
	"net/http"

	middlewareLib "github.com/ruandao/distribute-im-gateway/pkg/middlewareLib"
)

var helloworldHandlerF middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()
	w.Write([]byte("hello world!!!"))
}

func Register() {
	http.HandleFunc("/register", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		registerUser,
	))
	http.HandleFunc("/multipleCreateUser", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		multipleCreateUser,
	))
	http.HandleFunc("/batchCreateUser", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		batchCreateUser,
	))

	http.HandleFunc("/login", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		loginUser,
	))

	http.HandleFunc("/queryUser", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		queryUser,
	))
	http.HandleFunc("/getNotLoginRandomUser", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		getNotLoginRandomUser,
	))
	http.HandleFunc("/reInitNotLoginSet", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		reInitNotLoginSet,
	))

	http.HandleFunc("/cometAddr", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		cometAddrHandler,
	))
	http.HandleFunc("/helloword", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		helloworldHandlerF,
	))
}
