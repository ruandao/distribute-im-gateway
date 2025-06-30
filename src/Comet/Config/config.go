package config

import (
	"context"
	"errors"
	"fmt"
	"reflect"
	"sync/atomic"

	lib "github.com/ruandao/distribute-im-gateway/src/lib"
)

var depList = []string{
	"auth",
}

type Config struct {
	lib.BConfig
	AppConfig
}

func (conf *Config) AppStatePaths() []string {
	var paths []string
	for _, tag := range conf.TrafficTags {
		// /service/${BusinessName}/ready/${tag}/${ip:port}
		keyPath1 := fmt.Sprintf("/AppState/service/%v/%v/%v/%v", conf.BusinessName, conf.Version, tag, conf.RegisterAddr())
		// /service/${tag}/${BusinessName}:${version}/${ip:port}
		keyPath2 := fmt.Sprintf("/AppState/traffic/%v/%v/%v", tag, conf.LoadAppId(), conf.RegisterAddr())
		paths = append(paths, keyPath1, keyPath2)
	}
	return paths
}

var configVal atomic.Value

func readConf() *Config {
	if conf := configVal.Load(); conf != nil {
		return conf.(*Config)
	}
	return nil
}

func writeAppConf(appConf AppConfig) lib.XError {
	sortDepList(appConf.DepServices)
	if !reflect.DeepEqual(appConf.DepServices, depList) {
		err := errors.New(
			"AppConf.DepServices error: \n" +
				fmt.Sprintf("The list should be %v \n", depList) +
				fmt.Sprintf("But get %v", appConf.DepServices),
		)
		return lib.NewXError(err, "")
	}

	conf := readConf()
	if conf == nil {
		conf = &Config{}
	}
	conf.AppConfig = appConf
	configVal.Store(conf)
	return nil
}
func writeBConf(bConf lib.BConfig) {
	conf := readConf()
	if conf == nil {
		conf = &Config{}
	}
	conf.BConfig = bConf
	configVal.Store(conf)
}

func Load(ctx context.Context) (*Config, lib.XError) {
	bConfig, xerr := lib.LoadBasicConfig()
	if xerr != nil {
		return nil, xerr
	}
	writeBConf(bConfig)

	_appConf, xerr := readAppConfig(ctx, bConfig)
	if xerr != nil {
		return nil, xerr
	}

	writeAppConf(*_appConf)
	close(confReadyCh)

	return readConf(), xerr
}
