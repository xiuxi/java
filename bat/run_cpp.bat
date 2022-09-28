@echo off
rem rm D:/test/main.exe
WHERE cl.exe >nul 2>&1 && (
    echo found javac
) || (
	call D:\software\vs2019\Community\VC\Auxiliary\Build\vcvars32.bat
    call D:\software\vs_2019\Community\VC\Auxiliary\Build\vcvars32.bat
)

set file_path = %1%
d:
cd D:/test/
call D:\gitHub\java_ubuntu_windows\g\cls\cls_cpp.exe
call D:\gitHub\java_ubuntu_windows\autohotkey\vscode_cls.exe
cls

call cl.exe "%~1"  /Zi /std:c++17 /Fe: D:\test\main.exe
@echo on
if exist "D:/test/main.exe" (
	cls && D:/test/main.exe && echo: && echo:
)



