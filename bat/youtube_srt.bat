rem 需要使用edge浏览器下载字幕
if not exist *%2*.vtt (
    rem youtube-dl -i --sub-lang zh-Hans --write-auto-sub --sub-format srt --skip-download  https://www.youtube.com/watch?v=%2
)
rem call vtt_2_srt.bat
rem call srt_trime.bat
rem java j.copy_ok
rem java j.youtube_dl_22_one %2
java j.srt_dot_ajust
java j.srt_zh_text_ajust_by_dot_for_youtube