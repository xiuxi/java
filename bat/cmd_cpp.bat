call utf8.bat
d:
cls
echo %1

d:\
cd d:\test\
cls
clang %1 -o main.exe
call main.exe
