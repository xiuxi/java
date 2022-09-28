java j.p_bat
set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
:loop
git add .
git commit -m "a"
git push
rem java j.copy_zip_001_push
java j.git_copy_push
goto loop
