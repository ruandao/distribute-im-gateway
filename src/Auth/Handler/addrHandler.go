package handler

import (
	"context"
	"fmt"
	"net/http"

	configLib "github.com/ruandao/distribute-im-gateway/pkg/config"
	"github.com/ruandao/distribute-im-gateway/pkg/traffic"
	"github.com/ruandao/distribute-im-gateway/src/Auth/config"
	"github.com/ruandao/distribute-im-gateway/src/Auth/middleware"
)

var cometAddrHandler middleware.HandF = func(ctx context.Context, w http.ResponseWriter, r *http.Request) (nCtx context.Context, runNext bool) {
	defer r.Body.Close()

	endPoints := traffic.ReadRouteEndPoints("default", config.CONST_BUSINESS_COMET)
	var addrList []string
	for _, endPoint := range endPoints {
		addrList = append(addrList, fmt.Sprintf("http://%v/comet", endPoint))
	}
	addrStr := configLib.WriteIntoJSONIndent(addrList)

	w.Write([]byte(addrStr))
	return ctx, false
}
