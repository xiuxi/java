rem dlv debug
rem break main.go:6
rem continue
rem disass
rem go tool compile -S main.go > main.s
rem go.bat 为go项目,生成launch.json
rem GNU Assembler Language
rem go tool objdump  -S  __debug_bin1.exe > main.main__debug_bin1.txt
rem go tool objdump  -S -s main.main  __debug_bin1.exe > main.main__debug_bin1.s
rem dlv debug


rem D:\gitHub\bookings-app_source\src\v0.0.1
java j.go_vscode_launch
go mod init main
go mod tidy

go build -ldflags=-compressdwarf=false
go tool objdump  -S  "main.exe" > "go_debug.txt"
java j.go__debug_bin_text

