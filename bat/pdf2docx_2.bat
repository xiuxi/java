for %%f in (*.pdf) do (
	if not exist "%%~nf.docx" (
        rem pdf2docx convert "%%f" "%%~nf.docx"
        python D:\gitHub\java_ubuntu_windows\python\python_web_server\pdf2docx.py "%%f" "%%~nf.docx"
	)
)