package traffic

import (
	"context"
	"fmt"

	"github.com/ruandao/distribute-im-gateway/pkg/lib"
	"google.golang.org/grpc"
)

type TrafficConfig struct {
	TrafficIdKey TIDKey
	EndPoints    TrafficEndPoints
}

func NewConfig(tidKey string, TrafficEndPoints TrafficEndPoints) TrafficConfig {
	trafficConfig := TrafficConfig{TrafficIdKey: TIDKey(tidKey), EndPoints: TrafficEndPoints}
	return trafficConfig
}

func NewContext(trafficConfig TrafficConfig, ctx context.Context) context.Context {
	key := trafficConfig.TrafficIdKey
	if key == "" {
		key = "trafficIdKey"
	}

	tid := ctx.Value(key)
	if tid == nil {
		tid = NewTrafficID()
		ctx = context.WithValue(ctx, trafficConfig.TrafficIdKey, tid)
	}
	return ctx
}

func GetRPCClient(trafficConfig TrafficConfig, context context.Context) (*grpc.ClientConn, lib.XError) {
	for _, endPoint := range trafficConfig.EndPoints {
		conn, err := grpc.NewClient(endPoint)
		return conn, lib.NewXError(err, fmt.Sprintf("get client for %v fail: %v", endPoint, err))
	}
	return nil, lib.NewXError(fmt.Errorf("not endpoint found"), "")
}
