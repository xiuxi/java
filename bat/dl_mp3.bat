call proxy
set CLASSPATH=.;D:\gitHub\java_ubuntu_windows\target\classes;D:\gitHub\java_ubuntu_windows\dependency\*
chcp 936
if not exist *%2*.webm (
	youtube-dl -f 249 --get-url %2 > 249_url.txt
	youtube-dl -f 249 -j --flat-playlist https://www.youtube.com/watch?v=%2 > 249_name_json.txt
	java j.IDMan_249_name
)

if not exist *%2*.vtt (
    rem youtube-dl -i --sub-lang zh-Hans --write-auto-sub --sub-format srt --skip-download  https://www.youtube.com/watch?v=%2
)
rem call vtt_2_srt.bat
rem call srt_trime.bat
rem java j.youtube_dl_22_one %2


