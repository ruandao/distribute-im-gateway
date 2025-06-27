package traffic

import (
	"crypto/rand"
)

type TID [16]byte
type TIDKey string

func NewTrafficID() TID {
	var buf TID
	_, err := rand.Read(buf[:])
	if err != nil {
		panic(err)
	}
	return buf
}
