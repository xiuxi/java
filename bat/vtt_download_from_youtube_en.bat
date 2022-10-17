@REM call vtt_en.bat
@REM srt_download_en_auto.py
set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
java j.youtube_ids_bak
java j.en_vtt
java j.youtube_ids_remove
for /F  %%A in (youtube_ids.txt) do (
    if not exist *%%A.zh-Hans.vtt  (
		rem youtube-dl -i --sub-lang zh-Hans --write-auto-sub --sub-format srt --skip-download  https://www.youtube.com/watch?v=%%A
	)
	if not exist *%%A.en.vtt  (
		rem youtube-dl -i --sub-lang en --write-auto-sub --sub-format srt --skip-download  https://www.youtube.com/watch?v=%%A
		@REM youtube-dl -i --sub-lang en --write-auto-sub --skip-download  https://www.youtube.com/watch?v=%%A
		youtube-dl --write-auto-sub --convert-subs=srt --skip-download https://www.youtube.com/watch?v=%%A
	)
)
rem java j.en_vtt

@REM argv = ["-i",
@REM         # "--sub-lang",  "en",
@REM         # "--sub-lang",  "zh-Hans",
@REM         "--sub-lang",  "en",
@REM         # "--sub-format",
@REM         # "srv3",
@REM         "--sub-format","srt",
@REM         "--write-auto-sub",
@REM         "--skip-download",
@REM         "https://www.youtube.com/watch?v=GUhcE6YsuH0"]
@REM youtube-dl --sub-lang en --sub-format srt --write-auto-sub --skip-download https://www.youtube.com/watch?v=fLNN5H_T2pI
@REM  youtube-dl --sub-lang zh-Hans --sub-format srt --write-auto-sub --skip-download https://www.youtube.com/watch?v=fLNN5H_T2pI
@REM youtube-dl --write-auto-sub --convert-subs=srt --skip-download https://www.youtube.com/watch?v=fLNN5H_T2pI