package lib

import (
	"bytes"
	"fmt"

	"github.com/spf13/viper"
)

type BConfig struct {
	IP               string `mapstructure:"ip"`
	Port             string `mapstructure:"port"`
	EtcdConfigCenter string `mapstructure:"etcd-config-center"`
	BusinessName     string `mapstructure:"business-name"`
	Version          string `mapstructure:"version"`
}

func (bConf BConfig) ListenAddr() string {
	return fmt.Sprintf("127.0.0.1:%v", bConf.Port)
}
func (bConf BConfig) RegisterAddr() string {
	return fmt.Sprintf("%v:%v", bConf.IP, bConf.Port)
}

func (bConf BConfig) LoadAppId() string {
	return fmt.Sprintf("%v:%v", bConf.BusinessName, bConf.Version)
}

func LoadBasicConfig() (BConfig, XError) {
	config := BConfig{}
	viper.SetConfigName("config")
	viper.SetConfigType("yaml")
	viper.AddConfigPath(".")

	if err := viper.ReadInConfig(); err != nil {
		return config, NewXError(err, "load config.yaml fail")
	}

	// 优先使用环境变量（需设置环境变量前缀）
	viper.AutomaticEnv()
	viper.SetEnvPrefix("APP") // 环境变量需以APP_开头，如APP_DATABASE_URL

	if err := viper.Unmarshal(&config); err != nil {
		return config, NewXError(err, "config.yaml parse fail....")
	}

	return config, nil
}

func ReadInto(dataBytes []byte, store any) XError {
	v := viper.New()
	v.SetConfigType("json")

	// 从字节数组读取配置
	if err := v.ReadConfig(bytes.NewBuffer(dataBytes)); err != nil {
		return NewXError(err, "读取配置失败")
	}

	// 初始化配置结构体

	// 将配置解析到结构体
	if err := v.Unmarshal(&store); err != nil {
		return NewXError(err, "解析配置失败")
	}
	return nil
}

func UpdateAppState(keyPrefix string, state map[string]interface{}) {

}
