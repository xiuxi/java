set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
for %%f in (*.mp4) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
for %%f in (*.mkv) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
for %%f in (*.mov) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
for %%f in (*.wma) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
for %%f in (*.avi) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
for %%f in (*.mp3) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
for %%f in (*.m4v) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
for %%f in (*.VOB) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
for %%f in (*.wmv) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
for %%f in (*.rmvb) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh.srt" (
			if not exist "%%~nf.zh_en.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						autosub  -S zh-CN -D zh-CN "%%f" -o "%%~nf.zh.srt"
						java j.srt_zh_add_en
					)
				)
			)
		)
	)
)
