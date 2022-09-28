WHERE cl.exe >nul 2>&1 && (
    echo found javac
) || (
    rem  /d/software/vs_2019/Community/VC/Auxiliary/Build/vcvars32.bat
    rem cl.exe %*
    rem cl.bat
	call D:\software\vs2019\Community\VC\Auxiliary\Build\vcvars32.bat
    call D:\software\vs_2019\Community\VC\Auxiliary\Build\vcvars32.bat
)
rem pwd
rem pause
cls
rem pwd
rem echo %1
rem echo %CD%
@REM set current_file=%CD%\%1
set v1=%1%
set v1=%v1:"=%
set current_file=%CD%\%v1%
echo %CD%
echo %1
echo %current_file%
rem echo %current_file%
d:
cd D:\test\
rem echo %current_file%
rem pause
cls
rem echo %current_file%
pwd
echo call cl.exe "%current_file%" %2 %3 %4 %5 %6 %7 %8 %9
rem pause
call "D:\gitHub\java_ubuntu_windows\g\cls\cls_cpp.exe"
call "D:\gitHub\java_ubuntu_windows\autohotkey\vscode_cls.exe"
call cl.exe "%current_file%" %2 %3 %4 %5 %6 %7 %8 %9

