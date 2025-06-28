package lib

import (
	"fmt"

	"github.com/pkg/errors"
)

type Error struct {
	e error
}

type XError interface {
	XError() Error
	Error() string
}

func (xerr *Error) XError() Error {
	return *xerr
}

func (xerr *Error) Error() string {
	return xerr.String()
	// return xerr.error.Error()
}

func (xerr *Error) String() string {
	return fmt.Sprintf("%+v", xerr.e)
}

func NewXError(err error, msg string) XError {
	xerr, ok := err.(XError)
	if !ok {
		// new XError
		_err := errors.Wrap(err, "\n"+msg)
		xerr = &Error{e: _err}
		return xerr
	}
	// add message to bottom error
	_err := xerr.XError().e
	_err = errors.Wrap(_err, "\n"+msg)
	xerr = &Error{e: _err}
	return xerr
}
