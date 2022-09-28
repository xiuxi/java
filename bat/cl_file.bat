WHERE cl.exe >nul 2>&1 && (
    echo found javac
) || (
	call D:\software\vs2019\Community\VC\Auxiliary\Build\vcvars32.bat
    call D:\software\vs_2019\Community\VC\Auxiliary\Build\vcvars32.bat
)
cls
set v1=%1%
set current_file=%v1%
d:
cd D:\test\
cls
call "D:\gitHub\java_ubuntu_windows\g\cls\cls_cpp.exe"
call "D:\gitHub\java_ubuntu_windows\autohotkey\vscode_cls.exe"
call cl.exe %1 %2 %3 %4 %5 %6 %7 %8 %9

