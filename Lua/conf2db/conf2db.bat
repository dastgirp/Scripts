@echo off
:Start
set /p conffile=Enter .Conf FileName: 
set /p textfile=Enter Output FileName: 
set /p format=Enter Format("RE",Or see README.md): 
lua.exe conf2db.lua %conffile% %textfile% "%format%"
pause
