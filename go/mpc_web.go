package main

import (
	"fmt"
    "io/ioutil"
	"log"
	_ "net/http"
	"net/http"
)	
	
func main() {
	url := "http://localhost:13579/controls.html"

	response, err := http.Get(url)
	responseData,err := ioutil.ReadAll(response.Body)
	if err != nil {
		log.Fatal(err)
	}
	responseString := string(responseData)
	fmt.Println(responseString)
}