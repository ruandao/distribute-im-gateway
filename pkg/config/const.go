package config

var confReadyCh chan struct{}

func init() {
	confReadyCh = make(chan struct{})
}
