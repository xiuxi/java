package main

import (
	"fmt"
	"io/fs"
	"path/filepath"
	"strings"
)

// https://freshman.tech/snippets/go/list-files-in-dir/
func main() {
	var (
		files []string
	)
	filepath.Walk(".", func(path string, info fs.FileInfo, err error) error {
		if err != nil {
			return err
		}
		if strings.HasPrefix(path, ".git") {
			return nil
		}
		if info.IsDir() {
			return nil
		}
		files = append(files, path)
		return nil
	})
	for _, name := range files {
		fmt.Println(name)
	}
	fmt.Println("----------------------")
}
