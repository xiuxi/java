call gbk.bat
pushd .
d:
cd D:\gitHub\java_ubuntu_windows\bat\
call utf8.bat
echo %1% > arg0.txt
popd
rem call arg0.bat %1%
call gbk.bat
java j.code_search java 