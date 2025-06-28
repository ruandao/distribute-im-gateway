package lib

import (
	"github.com/spf13/viper"
)

type BConfig struct {
	Port             string `mapstructure:"port"`
	EtcdConfigCenter string `mapstructure:"etcd-config-center"`
	BusinessName     string `mapstructure:"business-name"`
	Version          string `mapstructure:"version"`
}

func LoadBasicConfig() (BConfig, XError) {
	config := BConfig{}
	viper.SetConfigName("config")
	viper.SetConfigType("yaml")
	viper.AddConfigPath(".")

	if err := viper.ReadInConfig(); err != nil {
		return config, NewXError(err, "load config.yaml fail")
	}

	if err := viper.Unmarshal(&config); err != nil {
		return config, NewXError(err, "config.yaml parse fail....")

	}

	return config, nil
}

func LoadAppConfig(keyPath string, config interface{}) XError {
	return nil
}

func UpdateAppState(keyPrefix string, state map[string]interface{}) {

}
