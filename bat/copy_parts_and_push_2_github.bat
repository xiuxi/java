set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809
:loop
git pull
git add .
git commit -m "a"
git push
java j.copy_parts_and_push_2_github
goto loop