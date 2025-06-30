package config

import (
	"sync/atomic"

	xConfLib "github.com/ruandao/distribute-im-gateway/pkg/config"
)

type CometState struct {
	ConnectCnt int `json:"connectCnt"`
	RoomCnt    int `json:"roomCnt"`
}

var cometStateVal atomic.Value

func initAppState() {
	cometStateVal = xConfLib.NewAppState(CometState{})
}

func WriteAppState(cometState CometState) {
	cometStateVal.Store(cometState)
}

func ReadAppState() CometState {
	return cometStateVal.Load().(CometState)
}
