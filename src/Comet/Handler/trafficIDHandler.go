package handler

import (
	"context"
	"net/http"

	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
	configLib "github.com/ruandao/distribute-im-gateway/src/Comet/config"

	"github.com/ruandao/distribute-im-gateway/pkg/traffic"
)

// put an traffic tag to the Context
var trafficTagHandler = func(ctx context.Context, w http.ResponseWriter, r *http.Request) (context.Context, bool) {
	reqTag := "default"
	authEndPoints := xConfLib.ReadRouteEndPoints(reqTag, configLib.CONST_AUTH_Business)
	trafficConfig := traffic.NewConfig("", authEndPoints)
	ctx = traffic.NewContext(trafficConfig, ctx)

	return ctx, true
}
