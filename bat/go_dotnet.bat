d:
cd D:\gitHub\java_ubuntu_windows
go build --buildmode=c-shared -ldflags="-s -w"  -o main.dll go_dotnet.go
rm D:\gitHub\java_ubuntu_windows\c#_dotnet\java_csharp\java_csharp\bin\Debug\main.dll
mv main.dll D:\gitHub\java_ubuntu_windows\c#_dotnet\java_csharp\java_csharp\bin\Debug\
