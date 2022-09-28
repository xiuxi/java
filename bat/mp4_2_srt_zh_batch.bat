set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
for %%f in (*.mp4) do (
	if exist "%%~nf.zh-Hans.srt" (
		rem file exists
	) else (
		autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh-Hans.srt"
	)
)
