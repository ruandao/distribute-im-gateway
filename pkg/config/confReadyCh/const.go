package confreadych

var Ch chan struct{}

func init() {
	Ch = make(chan struct{})
}
