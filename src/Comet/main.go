package main

import (
	"fmt"
	"net/http"
	"sync"

	config "github.com/ruandao/distribute-im-gateway/src/Comet/Config"
	handler "github.com/ruandao/distribute-im-gateway/src/Comet/Handler"
	logx "github.com/ruandao/distribute-im-gateway/src/Comet/Logx"
	"github.com/ruandao/distribute-im-gateway/src/lib"
)

func runHttpSer(wg *sync.WaitGroup) {
	config, xerr := config.Load()
	if xerr != nil {
		xerr = lib.NewXError(xerr, "jdkf")
		logx.Fatal(xerr)
	}

	handler.Register()

	logx.Infof("Start server http on: %v\n", config.AuthAddr)
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
