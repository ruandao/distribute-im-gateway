package main

import (
	"context"
	"fmt"
	"net/http"
	"sync"
	"time"

	logx "github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	config "github.com/ruandao/distribute-im-gateway/src/Comet/Config"
	handler "github.com/ruandao/distribute-im-gateway/src/Comet/Handler"
)

func runHttpSer(wg *sync.WaitGroup) {
	ctx, cancelf := context.WithTimeout(context.Background(), time.Second)
	defer cancelf()

	config, xerr := config.Load(ctx)
	if xerr != nil {
		logx.Fatal(xerr)
	}

	handler.Register()

	logx.Infof("start %v:\nlistenAddr: %v \nregisterAddr: %v\n", config.BConfig.LoadAppId(), config.BConfig.ListenAddr(), config.BConfig.RegisterAddr())
	if err := http.ListenAndServe(config.BConfig.ListenAddr(), http.DefaultServeMux); err != nil {
		fmt.Printf("Comet run err: %v\n", err)
		wg.Done()
	}
}

func main() {
	var wg sync.WaitGroup

	wg.Add(1)
	go runHttpSer(&wg)

	wg.Wait()
}
