echo off
set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
for %%f in (*.mp4) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						echo autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_after.go "%%~nf.zh_en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.wma) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.avi) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.mp3) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.m4v) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.VOB) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.webm) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						cls
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.wmv) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.mov) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.FLV) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.mkv) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)
for %%f in (*.rmvb) do (
	if not exist "%%~nf.en.srt" (
		if not exist "%%~nf.zh_en.srt" (
			if not exist "%%~nf.zh.srt" (
				if not exist "%%~nf.zh-Hans.srt" (
					if not exist "%%~nf.srt" (
						echo on
						go run D:\gitHub\java_ubuntu_windows\g\srt_en_add_zh_dir_before.go "%%f"
						java j.srt_en_add_zh_dir_before "%%f"
						autosub  -S en -D en "%%f" -o "%%~nf.en.srt"
						java j.srt_en_add_zh_dir
					)
				)
			)
		)
	)
)

