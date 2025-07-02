package middleware

import (
	"context"
	"net/http"

	"github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
)

// 认证中间件
var LogReqHandler HandF = func(ctx context.Context, _ http.ResponseWriter, r *http.Request) (nCtx context.Context, runNext bool) {
	logx.Infof("path: %v\n", r.URL.Path)
	return ctx, true
}
