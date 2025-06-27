package main

import (
	"fmt"
	"net/http"
	"sync"

	config "github.com/ruandao/distribute-im-gateway/src/Comet/Config"
	handler "github.com/ruandao/distribute-im-gateway/src/Comet/Handler"
	logx "github.com/ruandao/distribute-im-gateway/src/Comet/Logx"
)

func runHttpSer(wg *sync.WaitGroup) {
	config, err := config.Load()
	if err != nil {
		logx.Fatal(err)
	}

	handler.Register()

	logx.Infof("Start server http on: %v\n", config.Addr)
	if err = http.ListenAndServe(config.Addr, http.DefaultServeMux); err != nil {
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
