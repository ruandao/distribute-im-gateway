package handler

import (
	"context"
	"net/http"

	middlewareLib "github.com/ruandao/distribute-im-gateway/pkg/middlewareLib"
)

var handlerF middlewareLib.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request, nextF middlewareLib.NextF) {
	defer r.Body.Close()
	w.Write([]byte("hello world!!!"))
}

func Register() {
	http.HandleFunc("/comet", middlewareLib.H(
		middlewareLib.LogReqHandler,
		middlewareLib.MetricsMiddleware,
		authHandler, handlerF))
}
