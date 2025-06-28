package handler

import "net/http"

type HandF func(w http.ResponseWriter, r *http.Request) (runNext bool)

var handlerF = func(w http.ResponseWriter, r *http.Request) bool {
	defer r.Body.Close()
	w.Write([]byte("hello world!!!"))
	return false
}

func h(fArr ...HandF) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {

		for _, fun := range fArr {
			runNext := fun(w, r)
			if !runNext {
				break
			}
		}
	}
}

func Register() {
	http.HandleFunc("/comet", h(authHandler, handlerF))
}
