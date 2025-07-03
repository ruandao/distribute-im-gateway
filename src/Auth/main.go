package main

import (
	"context"
	"log"
	"net/http"
	"strconv"
	"sync"
	"time"

	"github.com/ruandao/distribute-im-gateway/pkg/lib"
	logx "github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	"github.com/ruandao/distribute-im-gateway/pkg/traffic"
	configLib "github.com/ruandao/distribute-im-gateway/src/Auth/config"
	handler "github.com/ruandao/distribute-im-gateway/src/Auth/handler"

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
	rConfig := config.AppConfig.RedisConfig
	if err := lib.RegisterRedisC(rConfig.Addr, rConfig.Password, rConfig.DB, rConfig.PoolSize); err != nil {
		logx.Fatal(err)
	}

	var wg sync.WaitGroup
	num, _ := strconv.Atoi(config.BConfig.Port)

	err := lib.RegisterNodeID(num % 1024)
	if err != nil {
		log.Fatal(err)
	}
	traffic.RegisterRouteVal(xConfLib.TrafficRouteVal)

	handler.LoadAllUser_to_NotLoginStatus(ctx, false)
	logx.Info("数据初始化成功, 等待请求...")
	wg.Add(2)

	go runSer(&wg, http.DefaultServeMux, config)

	wg.Wait()
}
