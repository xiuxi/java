WHERE cl.exe >nul 2>&1 && (
    echo found javac
) || (
    rem  /d/software/vs_2019/Community/VC/Auxiliary/Build/vcvars32.bat
    rem cl.exe %*
    rem cl.bat
	call D:\software\vs2019\Community\VC\Auxiliary\Build\vcvars64.bat
    call D:\software\vs_2019\Community\VC\Auxiliary\Build\vcvars64.bat
)
rem cp "D:\program\opencv-4.6.0-vc14_vc15\build\x64\vc15\bin\opencv_world460.dll"d:\test\
call cl.exe %1 %2 %3 %4 %5 %6 %7 %8 %9
