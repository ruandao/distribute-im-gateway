package main

import (
	"context"
	"fmt"
	"net/http"
	"sync"
	"time"

	config "github.com/ruandao/distribute-im-gateway/src/Comet/Config"
	handler "github.com/ruandao/distribute-im-gateway/src/Comet/Handler"
	logx "github.com/ruandao/distribute-im-gateway/src/lib/logx"
)

func runHttpSer(wg *sync.WaitGroup) {
	ctx, _ := context.WithTimeout(context.Background(), time.Second)
	config, xerr := config.Load(ctx)
	if xerr != nil {
		logx.Fatal(xerr)
	}

	fmt.Printf("config: %v\n", config)
	handler.Register()

	logx.Infof("Start http server on: %v\n", config.BConfig.RegisterAddr())
	if err := http.ListenAndServe(config.BConfig.ListenAddr(), http.DefaultServeMux); err != nil {
		fmt.Printf("Comet run: %v\n", err)
		wg.Done()
	}
}

func main() {
	var wg sync.WaitGroup

	wg.Add(1)
	go runHttpSer(&wg)

	wg.Wait()
}
