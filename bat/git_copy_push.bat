call gbk.bat

:loop
java j.git_copy_push
git add .
git commit -m "a"
git push
goto loop