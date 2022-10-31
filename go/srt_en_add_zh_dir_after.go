package main

import (
	"fmt"
	"os"
)

func main() {
	dir, err := os.Getwd()
	if err != nil {
		return
	}
	name := dir + "\\" + os.Args[1]
	fmt.Println(name)
}
