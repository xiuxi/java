:loop
taskkill /F /IM git.exe
sudo chmod -R 777 ./
set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
rem call autosub_en.bat
call autosub_mp4_2_srt_en_batch.bat
goto loop