package main

import (
	"fmt"
	"net/http"
	"sync"

	config "github.com/ruandao/distribute-im-gateway/src/Comet/Config"
	handler "github.com/ruandao/distribute-im-gateway/src/Comet/Handler"
	"github.com/ruandao/distribute-im-gateway/src/lib"
	logx "github.com/ruandao/distribute-im-gateway/src/lib/logx"
)

func runHttpSer(wg *sync.WaitGroup) {
	config, xerr := config.Load()
	if xerr != nil {
		xerr = lib.NewXError(xerr, "jdkf")
		logx.Fatal(xerr)
	}

	handler.Register()

	logx.Infof("Start server http on: %v\n", config.CometAddr)
	if err := http.ListenAndServe(config.AuthAddr, http.DefaultServeMux); err != nil {
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
