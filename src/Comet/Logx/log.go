package logx

import (
	"fmt"
	"os"
)

func Infof(format string, others ...interface{}) {
	fmt.Printf(format, others...)
}

func Error(format string, others ...interface{}) {
	fmt.Printf(format, others...)
}

func Fatal(err error) {
	fmt.Println(err)
	os.Exit(1)
}
