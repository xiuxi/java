package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
	// cls()
	// cmd := exec.Command("java j.cmd_cls")
	// cmd.Run()
	dir, err := os.Getwd()
	if err != nil {
		return
	}
	fmt.Println("\n-------------------------------------------------------------------------")
	name := dir + "\\" + os.Args[1]
	fmt.Println(name)
	// e := os.Rename(name, dir+"\\"+"_____.mp4")
	// if e != nil {
	// 	log.Fatal(e)
	// }
}
func cls() {
	cmd := exec.Command("cmd.exe", "/C", `chcp 936`)
	cmd.Run()
}
