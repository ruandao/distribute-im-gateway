package config

import (
	"context"
	"fmt"
	"sync/atomic"
	"time"

	lib "github.com/ruandao/distribute-im-gateway/src/lib"
	"github.com/ruandao/distribute-im-gateway/src/lib/logx"
	etcdLib "go.etcd.io/etcd/client/v3"
)

type AppState struct {
	ConnectCnt int `json:"connectCnt"`
	RoomCnt    int `json:"roomCnt"`
}

var appStateVal atomic.Value

func init() {
	appState := AppState{}
	appStateVal.Store(appState)
	go func() {
		<-confReadyCh
		for {
			xerr := registerState()
			var nilXerr lib.XError = nil
			logx.Infof("[Sync:%v] err: %v\n", xerr == nilXerr, xerr)

			conf := readConf()
			time.Sleep(time.Second * time.Duration(conf.Lease) / 3)
		}
	}()
}

func registerState() lib.XError {
	ctx := context.Background()

	conf := readConf()
	etcdCli, err := etcdLib.New(etcdLib.Config{
		Endpoints:   conf.EtcdConfigCenter,
		DialTimeout: 5 * time.Second,
	})
	if err != nil {
		xerr := lib.NewXError(err, "Connect Etcd Failed")

		return xerr
	}
	defer etcdCli.Close()

	leaseResp, err := etcdCli.Grant(ctx, conf.Lease)
	if err != nil {
		xerr := lib.NewXError(err, "Get Grant Fail")
		return xerr
	}
	leaseID := leaseResp.ID

	stateVal := lib.WriteIntoJSONIndent(appStateVal.Load())
	for _, key := range conf.AppStatePaths() {
		_, err := etcdCli.Put(ctx, key, stateVal, etcdLib.WithLease(leaseID))
		if err != nil {
			xerr := lib.NewXError(err, fmt.Sprintf("set key %s fail: %v", key, err))
			return xerr
		}
	}
	return nil
}
