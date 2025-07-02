package main

import (
	"context"
	"net/http"
	"sync"
	"time"

	"github.com/ruandao/distribute-im-gateway/pkg/lib"
	logx "github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	"github.com/ruandao/distribute-im-gateway/pkg/traffic"
	handler "github.com/ruandao/distribute-im-gateway/src/Auth/Handler"
	configLib "github.com/ruandao/distribute-im-gateway/src/Auth/config"

	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
)

func init() {
	handler.Register()
}

func main() {
	ctx, cancelf := context.WithTimeout(context.Background(), time.Second)
	defer cancelf()
	config, xerr := configLib.Load(ctx)
	if xerr != nil {
		logx.Fatal(xerr)
	}

	dbConfig := config.AppConfig.DBConfig
	if err := lib.RegisterDBConfig(dbConfig.Addr, dbConfig.User, dbConfig.Password, dbConfig.DBName); err != nil {
		logx.Fatal(err)
	}

	var wg sync.WaitGroup
	traffic.RegisterRouteVal(xConfLib.TrafficRouteVal)

	wg.Add(2)

	go runSer(&wg, http.DefaultServeMux, config)

	wg.Wait()
}
