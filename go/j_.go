package main

import (
	"fmt"
	"os"
	"os/exec"
)

func init() {
	if true {
		return;
	}
	cmd := exec.Command("cmd.exe", "/C", `chcp 936`)
	cmd.Run()
	fmt.Println("init")
}
func main() {
	if (true){
		return;
	}
	defer func() {
		fmt.Println("defer")
	}()
	fmt.Println(os.Args[0])
	fmt.Println("ls")
}
