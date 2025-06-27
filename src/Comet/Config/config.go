package config

import (
	"fmt"

	"github.com/ruandao/distribute-im-gateway/src/traffic"
	"github.com/spf13/viper"
)

type Config struct {
	CometAddr     string
	AuthAddr      string
	TrafficConfig traffic.Config
}

type xConfig struct {
	CometServer struct {
		Host string `mapstructure:"host"`
		Port int    `mapstructure:"port"`
	} `mapstructure:"cometServer"`
	Database struct {
		User     string `mapstructure:"user"`
		Password string `mapstructure:"password"`
		DBName   string `mapstructure:"dbname"`
	} `mapstructure:"database"`
	Debug       bool `mapstructure:"debug"`
	AuthService struct {
		Host string `mapstructure:"host"`
		Port int    `mapstructure:"port"`
	} `mapstructure:"authServer"`
	TrafficConfig struct {
		Host string `mapstructure:"host"`
		Port int    `mapstructure:"port"`
	} `mapstructure:"traffic"`
	
}

func (c *xConfig) GenServerConfig() Config {
	if c.CometServer.Host == "" {
		c.CometServer.Host = "127.0.0.1"
	}

	var config Config
	config.CometAddr = fmt.Sprintf("%v:%v", c.CometServer.Host, c.CometServer.Port)
	config.AuthAddr = fmt.Sprintf("%v:%v", c.AuthService.Host, c.AuthService.Port)
	config.TrafficConfig = 

	return config
}

var config *xConfig

func Load() (Config, error) {
	if config != nil {
		return config.GenServerConfig(), nil
	}

	viper.SetConfigName("config")
	viper.SetConfigType("yaml")
	viper.AddConfigPath(".")

	if err := viper.ReadInConfig(); err != nil {
		return config.GenServerConfig(), err
	}

	err := viper.Unmarshal(config)
	return config.GenServerConfig(), err
}
