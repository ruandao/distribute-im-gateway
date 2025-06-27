package handler

import "net/http"

var handlerF = func(w http.ResponseWriter, r *http.Request) {
	defer r.Body.Close()
	w.Write([]byte("hello world!!!"))
}

func h(fArr ...http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		for _, fun := range fArr {
			fun(w, r)
		}
	}
}

func Register() {
	http.HandleFunc("/comet", h(authHandler, handlerF))
}
