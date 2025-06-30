package config

import (
	"context"
	"sync"

	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
	"github.com/ruandao/distribute-im-gateway/pkg/lib"
)

var initOnce sync.Once

func Load(ctx context.Context) (*xConfLib.Config, lib.XError) {
	initOnce.Do(func() {
		initDepList()
		initAppState()
	})
	return xConfLib.Load(ctx)
}
