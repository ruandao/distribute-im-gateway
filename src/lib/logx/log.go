package logx

import (
	"fmt"
	"os"
)

func Info(msg ...interface{}) {
	fmt.Print(msg...)
}
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
