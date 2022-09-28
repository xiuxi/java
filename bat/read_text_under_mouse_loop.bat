prompt _
chcp 936
rem cls
pause
d:
cd D:\gitHub\java_ubuntu_windows
:loop1
rem call mvn_.bat
rem cmd隐藏上下滚动条.bat
cd D:\gitHub\java_ubuntu_windows
rem call mvn compile
rem call "D:\gitHub\java_ubuntu_windows\cmd_c\ShowHideScrollBar.exe"
call gbk.bat
cls
rem taskkill /F /IM read_text_under_mouse_loop_bat.exe
rem read_text_under_mouse_loop_bat.exe /c java j.read_text_under_mouse_loop
java j.read_text_under_mouse_loop
goto loop1