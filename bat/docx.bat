for %%f in (*.pdf) do (
	if not exist "%%~nf.docx" (
        pdf2docx convert "%%f" "%%~nf.docx"
	)
)