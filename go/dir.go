package main

import (
	"fmt"
	"io/ioutil"
	"log"
)

func main() {
	Dir()
	fmt.Println("ls.go")
}
func Dir() {
	files, err := ioutil.ReadDir(".")
	if err != nil {
		log.Fatal(err)
	}
	for _, file := range files {
		if file.IsDir() {
			fmt.Println(file.Name(), file.IsDir())
		}
	}
	fmt.Println()
	for _, file := range files {
		if !file.IsDir() {
			fmt.Println(file.Name(), file.IsDir())
		}
	}
}
