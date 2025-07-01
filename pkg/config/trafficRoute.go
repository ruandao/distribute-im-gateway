package config

import (
	"context"
	"fmt"
	"strings"
	"sync/atomic"
	"time"

	lib "github.com/ruandao/distribute-im-gateway/pkg/lib"
	"github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	"github.com/ruandao/distribute-im-gateway/pkg/traffic"
	etcdLib "go.etcd.io/etcd/client/v3"
)

// key: /service/${tag}/${BusinessName}/${ip:port}
// val: appState
type TrafficRoute map[string]string

var trafficRouteVal atomic.Value
var kvChangeEventCh chan etcdLib.Event

func readEndpointsFrom(route map[string]string, prefix string) traffic.TrafficEndPoints {
	var endPoints []string
	for key := range route {
		if strings.HasPrefix(key, prefix) {
			ipport, found := strings.CutPrefix(key, prefix)
			if found {
				endPoints = append(endPoints, ipport)
			}
		}
	}
	return endPoints
}

func ReadRouteEndPoints(tag any, business string) traffic.TrafficEndPoints {
	if tag == "" {
		tag = "default"
	}
	route := trafficRouteVal.Load().(TrafficRoute)
	targetKeyPrefix := fmt.Sprintf("/service/%v/%v/", tag, business)
	endPoints := readEndpointsFrom(route, targetKeyPrefix)

	// the business don't have tag Node
	// then we will traffic to default Node
	if len(endPoints) == 0 && tag != "default" {
		targetKeyPrefix := fmt.Sprintf("/service/%v/%v/", "default", business)
		endPoints = readEndpointsFrom(route, targetKeyPrefix)
	}
	return endPoints
}

func init() {
	kvChangeEventCh = make(chan etcdLib.Event)
	trafficRoute := make(TrafficRoute)
	trafficRouteVal.Store(trafficRoute)

	go func() {
		<-confReadyCh
		for {
			event := <-kvChangeEventCh
			route := trafficRouteVal.Load().(map[string]string)
			kv := event.Kv
			key := string(kv.Key)
			value := string(kv.Value)

			logx.Infof("traffic change:\n%v:%v\n", key, value)

			switch event.Type {
			case etcdLib.EventTypePut:
				route[key] = value
			case etcdLib.EventTypeDelete:
				delete(route, key)
			}
			trafficRouteVal.Store(route)
		}

	}()
}

func watchRoute(ctx context.Context, config *Config) lib.XError {
	cli, err := etcdLib.New(etcdLib.Config{
		Endpoints:   config.EtcdConfigCenter,
		DialTimeout: 5 * time.Second,
	})
	if err != nil {
		return lib.NewXError(err, "Connect Etcd Failed")
	}

	go func() {
		ch := cli.Watch(ctx, config.AppTrafficPrefix(""))
		for {
			kvChange := <-ch
			for _, event := range kvChange.Events {
				kvChangeEventCh <- *event
			}
		}
	}()
	return nil
}
