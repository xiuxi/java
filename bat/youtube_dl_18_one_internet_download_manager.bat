call proxy
set CLASSPATH=.;D:\gitHub\java_ubuntu_windows\target\classes;D:\gitHub\java_ubuntu_windows\dependency\*
rem rem cls
chcp 936
if not exist *%2*.mp4 (
	youtube-dl -f 18 --get-url %2 > 249_url.txt
	youtube-dl -f 18 -j --flat-playlist https://www.youtube.com/watch?v=%2 > 249_name_json.txt
	java j.IDMan_249_name
	rem call 249_url.bat
)
pause
if not exist *%2*.vtt (
    youtube-dl -i --sub-lang zh-Hans --write-auto-sub --sub-format srt --skip-download  https://www.youtube.com/watch?v=%2
)
call vtt_2_srt.bat
call srt_trime.bat
java j.copy_ok
java j.youtube_dl_22_one %2
java j.srt_dot_ajust

java j.srt_zh_text_ajust_by_dot_for_youtube
