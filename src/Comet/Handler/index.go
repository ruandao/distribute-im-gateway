package handler

import (
	"context"
	"net/http"
)

type HandF func(ctx context.Context, w http.ResponseWriter, r *http.Request) (nCtx context.Context, runNext bool)

var handlerF = func(ctx context.Context, w http.ResponseWriter, r *http.Request) (nCtx context.Context, runNext bool) {
	defer r.Body.Close()
	w.Write([]byte("hello world!!!"))
	return ctx, false
}

func h(fArr ...HandF) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx := r.Context()
		runNext := true
		for _, fun := range fArr {
			ctx, runNext = fun(ctx, w, r)
			if !runNext {
				break
			}
		}
	}
}

func Register() {
	http.HandleFunc("/comet", h(trafficTagHandler, authHandler, handlerF))
}
