set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
for %%f in (*.mp4) do (
	if exist "%%~nf.en.srt" (
		rem file exists
	) else (
		autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
		rem C:\Users\xiuxi\Desktop\autosub_app\autosub_app\j.exe  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
	)
)
for %%f in (*.wma) do (
	if exist "%%~nf.en.srt" (
		rem file exists
	) else (
		autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
		rem C:\Users\xiuxi\Desktop\autosub_app\autosub_app\j.exe  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
	)
)
for %%f in (*.avi) do (
	if exist "%%~nf.en.srt" (
		rem file exists
	) else (
		autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
		rem C:\Users\xiuxi\Desktop\autosub_app\autosub_app\j.exe  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
	)
)
for %%f in (*.mp3) do (
	if exist "%%~nf.en.srt" (
		rem file exists
	) else (
		autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
		rem C:\Users\xiuxi\Desktop\autosub_app\autosub_app\j.exe  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
	)
)
for %%f in (*.m4v) do (
	if exist "%%~nf.en.srt" (
		rem file exists
	) else (
		autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
		rem C:\Users\xiuxi\Desktop\autosub_app\autosub_app\j.exe  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
	)
)
for %%f in (*.VOB) do (
	if exist "%%~nf.en.srt" (
		rem file exists
	) else (
		autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
		rem C:\Users\xiuxi\Desktop\autosub_app\autosub_app\j.exe  -S zh-CN -D zh-CN "%%f" -o "%%~nf.en.srt"
	)
)
