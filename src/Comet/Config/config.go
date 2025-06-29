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

	return readConf(), xerr
}
