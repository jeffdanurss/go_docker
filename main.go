package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(rw http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(rw, "Hello world distribuida")
	})
	//Crea el servidor
	fmt.Println("El servidor esta corriendo en el puerto 3000")
	fmt.Println("Run server:http://localhost:8081")
	http.ListenAndServe("0.0.0.0:8081", nil)
}
