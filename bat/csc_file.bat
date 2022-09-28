WHERE cl.exe >nul 2>&1 && (
    echo found javac
) || (
    rem  /d/software/vs_2019/Community/VC/Auxiliary/Build/vcvars32.bat
    rem cl.exe %*
    rem cl.bat
	call D:\software\vs2019\Community\VC\Auxiliary\Build\vcvars64.bat
    call D:\software\vs_2019\Community\VC\Auxiliary\Build\vcvars64.bat
)
rem call cl.exe %1 %2 %3 %4 %5 %6 %7 %8 %9
rem csc.exe /?
d:
cd d:\test\
rem csc %1 main.exe
csc %1 -out:d:\test\main.exe

