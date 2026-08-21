package main

import (
	"fmt"
	"log"
	"net/http"
)

func healthHandler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	fmt.Fprintf(w, "OK")
}

func main() {
	http.HandleFunc("/health", healthHandler)

	fmt.Println("Vega Scheduler starting on port 8081...")
	log.Fatal(http.ListenAndServe(":8081", nil))
}
