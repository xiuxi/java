call gbk.bat
call proxy.bat
:loop
rem call go.bat
d: 
cd D:\gitHub\java_ubuntu_windows
go run g.go > D:\go\g.txt
rem cls
call D:\gitHub\java_ubuntu_windows\c#_dotnet\console_show\console_show\bin\Debug\net5.0\console_show.exe
rem cls
java j.go_watch
goto loop
