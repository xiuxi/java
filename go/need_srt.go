package g

import (
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
)

func Need_srt() {
	files, _ := ioutil.ReadDir(".")
	path, _ := os.Getwd()
	for _, dir := range files {
		if dir.IsDir() {
			has_srt := false
			srts, _ := ioutil.ReadDir(dir.Name())
			for _, srt := range srts {
				srt_name := srt.Name()
				if strings.HasSuffix(srt_name, ".srt") {
					has_srt = true
					break
				}
			}
			if !has_srt {
				fmt.Println(filepath.Join(path, dir.Name()))
			}
		}
	}
}
