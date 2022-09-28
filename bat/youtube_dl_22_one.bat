call proxy
set CLASSPATH=.;D:\gitHub\java_ubuntu_windows\target\classes;D:\gitHub\java_ubuntu_windows\dependency\*
rem cls
rem chcp 936
rem java j.youtube_dl_22
rem pause
rem chcp 65001
rem cls
rem for %%f in (*.vtt) do (
rem 	if exist "%%~nf.srt" (
rem 		rem file exists
rem 	) else (
rem 		ffmpeg -y -i "%%f" "%%~nf.srt"
rem 	)
rem )
rem youtube_dl_22.bat https://www.youtube.com/watch?v=Ipa58NVGs_c
rem cls
rem set /p java_return=<java_return.txt
if not exist *%2*.mp4 (
    python D:\gitHub\java_ubuntu_windows\youtube_dl_22_one.py %2
)
if not exist *%2*.vtt (
    youtube-dl -i --sub-lang zh-Hans --write-auto-sub --sub-format srt --skip-download  https://www.youtube.com/watch?v=%2
)
call vtt_2_srt.bat
call srt_trime.bat
rem call playMp4.bat
java j.youtube_dl_22_one %2

