@echo off
:Start
set /p conffile=Enter .Conf FileName: 
set /p textfile=Enter Output FileName: 
set /p format=Enter Format("RE",Or see README.md): 
lua53.exe multi-tools.lub conf2db %conffile% %textfile% "%format%"
pause
