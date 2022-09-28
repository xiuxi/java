call cl.bat
:loop
cls
node tut3.js
call ts2c tut3.js
call cl.exe tut3.c
call tut3.exe
pause
goto loop