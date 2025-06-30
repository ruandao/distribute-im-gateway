package config

import (
	"context"
	"fmt"
	"reflect"
	"time"

	lib "github.com/ruandao/distribute-im-gateway/src/lib"
	"github.com/ruandao/distribute-im-gateway/src/lib/logx"
	etcdLib "go.etcd.io/etcd/client/v3"
)

type AppConfig struct {
	TrafficTags []string `mapstructure:"trafficTags"`
	// 为什么需要从配置中读取？程序是知道自己依赖哪些服务的，但是编排程序的人不知道，所以需要强制二者一致，这样部署维护就更容易
	DepServices []string `mapstructure:"depServices"`
}

var appConfCh chan AppConfig

func init() {
	sortDepList(depList)

	appConfCh = make(chan AppConfig)
	writeAppConf(AppConfig{})

	go func() {
		for {
			appConf := <-appConfCh
			writeAppConf(appConf)
		}
	}()
}

func readAppConfig(ctx context.Context, bConfig lib.BConfig) (*AppConfig, lib.XError) {
	cli, err := etcdLib.New(etcdLib.Config{
		Endpoints:   bConfig.EtcdConfigCenter,
		DialTimeout: 5 * time.Second,
	})
	if err != nil {
		return nil, lib.NewXError(err, "Connect Etcd Failed")
	}
	defer cli.Close()

	bKeyPath := []byte(bConfig.AppConfPath())
	gResp, err := cli.Get(ctx, bConfig.AppConfPath())
	if err != nil {
		return nil, lib.NewXError(err, fmt.Sprintf("Get %v Config Data Fail", bConfig.LoadAppId()))
	}
	for _, kv := range gResp.Kvs {
		key := kv.Key
		if !reflect.DeepEqual(key, bKeyPath) {
			continue
		}

		value := kv.Value

		var _appConfig AppConfig
		if xerr := lib.ReadInto(value, &_appConfig); xerr != nil {
			logx.Errorf("%v App配置有误: %v", bConfig.LoadAppId(), xerr)
			continue
		}
		return &_appConfig, nil
	}
	return nil, lib.NewXError(fmt.Errorf("%v App配置未找到", bConfig.LoadAppId()), "")
}
