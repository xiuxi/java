echo off
SETLOCAL EnableDelayedExpansion
set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
setlocal EnableDelayedExpansion
set /a Count=0
for %%f IN (%*) DO (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						autosub  -S zh-CN -D zh-CN %%f -o "%%~nf.zh.srt"
					)
				)
			)
		)
	)
	goto end
)
Endlocal
for %%f in (%1) do (
	if not exist %%~nf.en.srt (
		if not exist %%~nf.zh.srt (
			if not exist %%~nf.zh_en.srt (
				if not exist %%~nf.zh-Hans.srt (
					if not exist "%%~nf.srt (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
					)
				)
			)
		)
	)
)
:end
Endlocal
echo on
