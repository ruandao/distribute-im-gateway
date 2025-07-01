package config

import (
	"sync/atomic"

	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
)

var depList = []string{
	"",
}

type AuthState struct {
}

var cometStateVal atomic.Value

func initAppState() {
	cometStateVal = xConfLib.NewAppState(AuthState{})
}

func WriteAppState(authState AuthState) {
	cometStateVal.Store(authState)
}

func ReadAppState() AuthState {
	return cometStateVal.Load().(AuthState)
}
