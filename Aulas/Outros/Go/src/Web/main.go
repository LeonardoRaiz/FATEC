package main

import (
	"net/http"

	"github.com/Alura/routes"
)

func main() {
	routes.CarregaRotas()
	http.ListenAndServe(":8000", nil)
}
