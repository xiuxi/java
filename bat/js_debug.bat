rem D:\gitHub\java_ubuntu_windows\nodejs\sampsite_nodejs_vscode_debug_mongoDB
call gbk.bat
:loop
rem java j.js_log_off
java j.js_log
rem call SET DEBUG=sampsite:* & npm start
call SET DEBUG=sampsite:*
call npm start
goto loop