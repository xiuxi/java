rem g++ -o main.exe main.cpp
rem main.exe
d:
call D:\software\vs_2019\Community\VC\Auxiliary\Build\vcvars32.bat
call gbk
java j.toggle_cpp_debug
:loop1
java j.cout_cpp_add_line_print main.cpp
java j.cpp_h_source_format main.cpp
java j.CallMonitor
cl.exe /nologo /c /MD /Fa./main.asm main.cpp
java j.main_cpp_asm
pushd .
cd D:\gitHub\CallMonitor\code_stl_03_1_CallMon_debug_parent

msbuild
rm D:\gitHub\CallMonitor\Debug\code_stl_03_1_CallMon_debug_parent.exe
cp D:\gitHub\CallMonitor\code_stl_03_1_CallMon_debug_parent\Debug\code_stl_03_1_CallMon_debug_parent.exe D:\gitHub\CallMonitor\Debug\code_stl_03_1_CallMon_debug_parent.exe
call D:\gitHub\CallMonitor\Debug\code_stl_03_1_CallMon_debug_parent.exe 

popd
rm main.txt.h
cp D:\gitHub\CallMonitor\code_stl_03_1_CallMon_debug_parent\main.txt.h .\main.txt.h
pause
rem cls
goto loop1