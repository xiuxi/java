WHERE cl.exe >nul 2>&1 && (
    echo found javac
) || (
    rem  /d/software/vs_2019/Community/VC/Auxiliary/Build/vcvars32.bat
    rem cl.exe %*
    rem cl.bat
    rem call D:\software\vs_2019\Community\VC\Auxiliary\Build\vcvars32.bat
	call D:\software\vs2019\Community\VC\Auxiliary\Build\vcvars64.bat
)
rem call cl.exe %1 %2 %3 %4 %5 %6 %7 %8 %9
rem nvcc -o histo histo.cu
nvcc -o D:\test\main.exe %1
