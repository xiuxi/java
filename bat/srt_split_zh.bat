chcp 65001
mv "C:\Users\xiuxi\Downloads\Go Programming tmp - 中文（简体） ➔ 英语(双语).srt" zh.txt
call proxy
set CLASSPATH=.;D:\gitHub\java_ubuntu_windows\target\classes;D:\gitHub\java_ubuntu_windows\dependency\*
rem cls
java j.srt_split_zh
chcp 65001