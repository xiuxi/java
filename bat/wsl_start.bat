rem sudo /etc/init.d/xrdp start
rem localhost:3390
rem 必须分成两部， 第一步：运行wsl.exe, 第二部：运行sudo /etc/init.d/xrdp start
pause
wsl.exe -u xiuxi sudo /etc/init.d/xrdp start