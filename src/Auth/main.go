package main

import (
	"net/http"
	"sync"

	"github.com/ruandao/distribute-im-gateway/pkg/traffic"
	handler "github.com/ruandao/distribute-im-gateway/src/Auth/Handler"

	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
)

func init() {
	handler.Register()
}

func main() {
	var wg sync.WaitGroup
	traffic.RegisterRouteVal(xConfLib.TrafficRouteVal)

	wg.Add(2)

	go runSer(&wg, http.DefaultServeMux)

	wg.Wait()
}
