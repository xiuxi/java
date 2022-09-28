call proxy
set CLASSPATH=.;D:\gitHub\java_ubuntu_windows\target\classes;D:\gitHub\java_ubuntu_windows\dependency\*
rem cls
chcp 936
if not exist *%2*.mp4 (
	youtube-dl -f 22 --get-url %2 > 249_url.txt
	youtube-dl -f 22 -j --flat-playlist https://www.youtube.com/watch?v=%2 > 249_name_json.txt
	java j.IDMan_249_name
)
pause
if not exist *%2*.vtt (
    youtube-dl -i --sub-lang zh-Hans --write-auto-sub --sub-format srt --skip-download  https://www.youtube.com/watch?v=%2
)
call vtt_2_srt.bat
call srt_trime.bat

java j.youtube_dl_22_one %2
cp ok/*.srt ./
java j.srt_dot_ajust

