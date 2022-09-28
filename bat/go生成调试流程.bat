call gbk.bat
cd D:\gitHub\bookings-app_source\src\v0.0.1\cmd\web
go build -ldflags=-compressdwarf=false
move web.exe ../../
cd ../../
go tool objdump  -S  "web.exe" > "go_debug.txt"
java j.go__debug_bin_text
pause