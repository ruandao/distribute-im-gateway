package traffic

import (
	"context"
	"net/http"

	"google.golang.org/grpc"
)

type Config struct {
	TrafficIdKey TIDKey
	Addr         string
}

func NewTrafficConfig(tidKey string, addr string) {

}

func NewContext(config Config, r *http.Request) context.Context {
	rCtx := r.Context()
	tid := rCtx.Value(config.TrafficIdKey)
	if tid == nil {
		tid = NewTrafficID()
		rCtx = context.WithValue(rCtx, config.TrafficIdKey, tid)
	}
	return rCtx
}

func GetRPCClient(authAddr string, context context.Context) (conn *grpc.ClientConn, err error) {
	conn, err = grpc.NewClient(authAddr)
	return conn, err
}
