@echo off
:Start
set /p conffile=Enter .Conf FileName: 
set /p textfile=Enter Output FileName: 
set /p format=Enter Format("RE",Or see README.md): 
set /p logs=Enables Logs(1 or 0): 
lua.exe conf2db.lua %conffile% %textfile% "%format%" %logs%
pause
