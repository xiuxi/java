for %%f in (*.vtt) do (
	if exist "%%~nf.srt" (
		rem file exists
	) else (
		ffmpeg -y -i "%%f" "%%~nf.srt"
	)
)
java j.srt_remove_space
java j.srt_one_line
java j.srt_dot_ajust
java j.end_rename .zh-Hans.srt .zh.srt
java j.srt_zh_add_en
java j.zh_en_save