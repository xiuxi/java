for %%f in (*.mp4) do (
	ffmpeg -f "%%f" "%%~nf.mp3"
	java j.mp4_2_mp3_remove_mp4 %%f
)