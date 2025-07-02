package middleware

import (
	"context"
	"net/http"
)

type HandF func(ctx context.Context, w http.ResponseWriter, r *http.Request) (nCtx context.Context, runNext bool)
