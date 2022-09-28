wsl -u root




注意要用管理员权限启动powershell窗口哦，也不要忘记重启电脑，上面的/d 后面的数字2代表开启自动启动。
能用wsl, 网络占用cpu高，电脑变慢
REG add "HKLM\SYSTEM\CurrentControlSet\services\dnscache" /v Start /t REG_DWORD /d 2 /f

不能用wsl, 电脑变快
REG add "HKLM\SYSTEM\CurrentControlSet\services\dnscache" /v Start /t REG_DWORD /d 4 /f

重启电脑