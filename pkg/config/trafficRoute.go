package config

import (
	"context"
	"sync/atomic"
	"time"

	confreadych "github.com/ruandao/distribute-im-gateway/pkg/config/confReadyCh"
	lib "github.com/ruandao/distribute-im-gateway/pkg/lib"
	"github.com/ruandao/distribute-im-gateway/pkg/lib/logx"
	etcdLib "go.etcd.io/etcd/client/v3"
)

var kvChangeEventCh chan *TrafficRouteEvent
var TrafficRouteVal *atomic.Value

func RegisterRouteEventCh(ch chan *TrafficRouteEvent) {
	kvChangeEventCh = ch
}

// key: /service/${tag}/${BusinessName}/${ip:port}
// trafficRoute

func init() {
	TrafficRouteVal = &atomic.Value{}
	kvChangeEventCh = make(chan *TrafficRouteEvent)
	trafficRoute := make(map[string]string)
	TrafficRouteVal.Store(trafficRoute)

	go func() {

		<-confreadych.Ch
		logx.Info("config ready")
		for {
			event := <-kvChangeEventCh

			route := TrafficRouteVal.Load().(map[string]string)
			switch event.Type {
			case TrafficRouteEventTypePut:
				for _, kv := range event.KVs {
					key := string(kv.Key)
					value := string(kv.Value)
					logx.Infof("[update] route %v:%v\n", key, value)
					route[key] = value
				}
			case TrafficRouteEventTypeDelete:
				for _, kv := range event.KVs {
					key := string(kv.Key)
					delete(route, key)
					logx.Infof("[del] route %v\n", key)
				}
			}
			logx.Infof("route: %v\n", WriteIntoJSONIndent(route))
			logx.Infof("event: %v\n", event)
			TrafficRouteVal.Store(route)
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
		keyPrefix := config.AppTrafficPrefix("")
		ReadAllInto(ctx, cli, keyPrefix, kvChangeEventCh)
		logx.Infof("watch route %v\n", keyPrefix)
		ch := cli.Watch(ctx, keyPrefix)
		for {
			kvChange, ok := <-ch
			if !ok {
				break
			}
			for _, event := range kvChange.Events {
				logx.Infof("get watch event: %v type %v\n", event.Kv.Key, event.Type)
				eventType := NewTrafficRouteEventTypeFrom(event.Type)
				newEvent := NewTrafficRouteEvent(eventType, nil)
				newEvent.KVs = append(newEvent.KVs, event.Kv)
				kvChangeEventCh <- newEvent
			}
		}
		logx.Infof("watch route end %v\n", keyPrefix)
	}()
	return nil
}

func ReadAllInto(ctx context.Context, cli *etcdLib.Client, keyPrefix string, ch chan *TrafficRouteEvent) lib.XError {
	gResp, err := cli.Get(ctx, keyPrefix, etcdLib.WithPrefix())
	if err != nil {
		return lib.NewXError(err, "Read etcd config fail")
	}
	logx.Infof("ReadAllInto key: %v ->  %v\n", keyPrefix, gResp.Kvs)
	event := NewTrafficRouteEvent(TrafficRouteEventTypePut, gResp.Kvs)
	ch <- event
	return nil
}
