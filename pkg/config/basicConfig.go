package config

import (
	"bytes"
	"encoding/json"
	"fmt"

	"github.com/ruandao/distribute-im-gateway/pkg/lib"
	"github.com/spf13/viper"
)

type BConfig struct {
	BusinessName     string   `mapstructure:"business-name"`
	Version          string   `mapstructure:"version"`
	IP               string   `mapstructure:"ip"`
	Port             string   `mapstructure:"port"`
	EtcdConfigCenter []string `mapstructure:"etcd-config-center"`
	Lease            int64    `mapstructure:"lease-time-seconds"`
}

func (bConfig BConfig) AppConfPath() string {
	keyPath := fmt.Sprintf("/service/%v/%v/config", bConfig.BusinessName, bConfig.Version)
	return keyPath
}
func (bConf BConfig) ListenAddr() string {
	return fmt.Sprintf("127.0.0.1:%v", bConf.Port)
}
func (bConf BConfig) RegisterAddr() string {
	return fmt.Sprintf("%v:%v", bConf.IP, bConf.Port)
}

func (bConf BConfig) LoadAppId() string {
	return fmt.Sprintf("%v-%v", bConf.BusinessName, bConf.Version)
}

func LoadBasicConfig() (BConfig, lib.XError) {
	config := BConfig{}
	viper.SetConfigName("config")
	viper.SetConfigType("yaml")
	viper.AddConfigPath(".")

	if err := viper.ReadInConfig(); err != nil {
		return config, lib.NewXError(err, "load config.yaml fail")
	}

	// 优先使用环境变量（需设置环境变量前缀）
	viper.AutomaticEnv()
	viper.SetEnvPrefix("APP") // 环境变量需以APP_开头，如APP_DATABASE_URL

	if err := viper.Unmarshal(&config); err != nil {
		return config, lib.NewXError(err, "config.yaml parse fail....")
	}

	return config, nil
}

func ReadInto(dataBytes []byte, store any) lib.XError {
	v := viper.New()
	v.SetConfigType("json")

	// 从字节数组读取配置
	if err := v.ReadConfig(bytes.NewBuffer(dataBytes)); err != nil {
		return lib.NewXError(err, "读取配置失败")
	}

	// 初始化配置结构体

	// 将配置解析到结构体
	if err := v.Unmarshal(&store); err != nil {
		return lib.NewXError(err, "解析配置失败")
	}
	return nil
}

func WriteIntoJSONIndent(val any) string {
	jsonData, _ := json.MarshalIndent(val, "", " ")
	return string(jsonData)
}
