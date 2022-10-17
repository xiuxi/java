call gbk.bat

:loop
rem java j.git_copy_push
java j.copy_push
git add .
git commit -m "a"
java j.speak "please upload desktop git"
pause
rem git push
goto loop
rem D:\gitHub\java_ubuntu_windows\src\main\java\j\git_copy_push.txt
rem git clean -df
rem git reset --hard origin/HEAD
rem git reset --hard HEAD
rem https://stackoverflow.com/questions/1628088/reset-local-repository-branch-to-be-just-like-remote-repository-head