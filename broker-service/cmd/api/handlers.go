package main

import (
	"helper"
	"net/http"
)

func (app *Config) Broker(w http.ResponseWriter, r *http.Request) {
	payload := helper.JsonResponse{
		Error:   false,
		Message: "Hit the broker handler",
	}

	err := helper.WriteJSONUsingMarshall(w, http.StatusOK, payload)
	if err != nil {
		return
	}

}
