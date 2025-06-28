package config

import (
	"fmt"
	"sync/atomic"
	"time"

	lib "github.com/ruandao/distribute-im-gateway/src/lib"
	"github.com/ruandao/distribute-im-gateway/src/traffic"
	"go.etcd.io/etcd/clientv3"
)

type Config struct {
	CometAddr     string
	AuthAddr      string
	TrafficConfig traffic.Config
}

var configVal atomic.Value
var configCh chan Config

func init() {
	configCh = make(chan Config)
	writeAppConf(Config{})

	go func() {
		for {
			conf := <-configCh
			writeAppConf(conf)
		}
	}()
}

func readAppConf() Config {
	return configVal.Load().(Config)
}
func writeAppConf(conf Config) {
	configVal.Store(conf)
}

func Load() (Config, lib.XError) {

	bConfig, xerr := lib.LoadBasicConfig()
	if xerr != nil {
		return readAppConf(), xerr
	}

	cli, err := clientv3.New(clientv3.Config{
		Endpoints:   []string{bConfig.EtcdConfigCenter},
		DialTimeout: 5 * time.Second,
	})
	if err != nil {
		return readAppConf(), lib.NewXError(err, "Connect Etcd Failed")
	}
	defer cli.Close()

	var config = Config{}
	keyPath := fmt.Sprintf("/service/%v/%v/config", bConfig.BusinessName, bConfig.Version)
	if xerr := lib.LoadAppConfig(keyPath, &config); xerr != nil {
		return config, xerr
	}
	writeAppConf(config)

	return readAppConf(), nil
}
