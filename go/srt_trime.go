package g

import (
	"bufio"
	"bytes"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"strconv"
	"strings"
)

func is_srt_line(line string) bool {
	return len(line) == len("00:00:00,256 --> 00:00:06,400") &&
		strings.Contains(line, " --> ")
}

func Srt_trime() {
	files, err := ioutil.ReadDir(".")
	if err != nil {
		log.Fatal(err)
	}
	for _, file_info := range files {
		if !file_info.IsDir() {
			name := file_info.Name()
			if strings.HasSuffix(name, ".srt") {
				fmt.Println(name)
				file, _ := os.Open(file_info.Name())
				defer file.Close()
				var lines []string
				scanner := bufio.NewScanner(file)
				for scanner.Scan() {
					lines = append(lines, scanner.Text())
				}
				var srt_lines []int
				for i, line := range lines {
					if is_srt_line(line) {
						srt_lines = append(srt_lines, i-1)
					}
				}
				var buffer bytes.Buffer
				srt_index := 1
				for i, line := range lines {
					if is_srt_line(line) {
						line_text := ""
						for i1 := i + 1; i1 < len(lines); i1++ {
							if contains(srt_lines, i1) {
								break
							}
							len1 := len(strings.TrimSpace(lines[i1]))
							if len1 == 0 {
								continue
							}
							if len(line_text) > 0 {
								line_text += " `"
							}
							line_text += lines[i1]
						}
						buffer.WriteString(strconv.Itoa(srt_index))
						buffer.WriteString("\n")
						buffer.WriteString(line)
						buffer.WriteString("\n")
						buffer.WriteString(line_text)
						buffer.WriteString("\n\n")
						srt_index++
					}

				}
				os.WriteFile(file_info.Name(), buffer.Bytes(), 0777)
			}
		}
	}
}

func contains(s []int, str int) bool {
	for _, v := range s {
		if v == str {
			return true
		}
	}
	return false
}
