set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809

for /F  %%A in (youtube_ids.txt) do (
    if not exist *%%A.zh-Hans.vtt  (
		youtube-dl -i --sub-lang zh-Hans --write-auto-sub --sub-format srt --skip-download  https://www.youtube.com/watch?v=%%A
	)
	if not exist *%%A.en.vtt  (
		rem youtube-dl -i --sub-lang en --write-auto-sub --sub-format srt --skip-download  https://www.youtube.com/watch?v=%%A
	)
)

rem for %%f in (*.vtt) do (
rem 	if exist "%%~nf.srt" (
rem 		rem file exists
rem 	) else (
rem 		ffmpeg -y -i "%%f" "%%~nf.srt"
rem 	)
rem )