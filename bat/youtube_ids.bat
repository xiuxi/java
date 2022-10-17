call proxy
set CLASSPATH=.;D:\gitHub\java_ubuntu_windows\target\classes;D:\gitHub\java_ubuntu_windows\dependency\*

@REM call vtt_download_from_youtube_en.bat
@REM vtt_en.bat
@REM srt_download_en.py

rem exit

rem echo %1 > %1.txt
java j.youtube_ids_bak

java j.en_add_zh_prefix

java j.youtube_ids  %1 %2 %3 %4 %5 %6

echo "srt_download_en.py"

SET CMD=%~1
IF "%CMD%" == "" (
    @REM echo "----------------------------none"
    @REM cls
) ELSE (
    @REM echo "---------------------have"
    youtube-dl -j --flat-playlist %1 > youtube_ids.txt
)



rem youtube-dl -j --flat-playlist %1 > youtube_ids.txt
java j.youtube_ids
echo "manual download youtube_ids java j.youtube_ids_from_browser_edge_chrome"

@REM srt_download_en_auto.py
rem sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
rem sudo chmod a+rx /usr/local/bin/youtube-dl
rem ln -s /usr/bin/python3 /usr/bin/python
rem apt install python3-pip
rem youtube-dl -j --flat-playlist UUWI-ohtRu8eEeDj93hmUsUQ >youtube_ids.txt
rem python3 -m pip install --user uploadserver
rem nohup python3 -m uploadserver 80  > /dev/null 2>&1 &
rem python3 -m uploadserver 80
