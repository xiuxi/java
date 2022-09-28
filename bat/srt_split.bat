call proxy
set CLASSPATH=.;D:\gitHub\java_ubuntu_windows\target\classes;D:\gitHub\java_ubuntu_windows\dependency\*
rem cls
java j.srt_split
rem mv C:\Users\xiuxi\Downloads\*.srt .\
cd ..\..
call zh_en.bat
c:
cd C:\Users\xiuxi\Downloads\
rm *.srt
rm *.txt
rm *.sbv
