package config

import (
	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
)

var depList = []string{
	"auth",
}

func initDepList() {
	xConfLib.RegisterDepList(depList)
}
