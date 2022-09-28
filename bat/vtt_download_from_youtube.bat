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

rem call vtt_trime_srt.bat
rem cd ok
rem java j.srt_dot_ajust
rem call vtt_2_srt.bat
for %%f in (*.vtt) do (
	if exist "%%~nf.srt" (
		rem file exists
	) else (
		ffmpeg -y -i "%%f" "%%~nf.srt"
	)
)
java j.srt_one_line
java j.end_rename .zh-Hans.srt .zh.srt
java j.srt_remove_space
java j.srt_zh_add_en
java j.zh_en_save
java j.hide_vtt
