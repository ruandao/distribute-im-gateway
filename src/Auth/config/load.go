package config

import (
	"context"
	"sync"

	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
)

var initOnce sync.Once

func Load(ctx context.Context) (*xConfLib.Config, error) {
	conf, err := xConfLib.LoadConfig(ctx, depList)
	initOnce.Do(func() {
		initAppState()
	})
	return conf, err
}
