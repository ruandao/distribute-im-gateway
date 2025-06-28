package logx

import (
	"fmt"
	"os"
)

func Infof(format string, others ...interface{}) {
	fmt.Printf(format, others...)
}

func Errorf(format string, others ...interface{}) {
	fmt.Printf(format, others...)
}

func Fatal(err error) {
	fmt.Printf("%+v\n", err)
	os.Exit(1)
}
