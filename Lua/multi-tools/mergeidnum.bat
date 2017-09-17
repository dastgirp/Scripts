@echo off
:Start
set /p inputfolder=Enter Input Folder: 
set /p itemInfo=Enter Output FileName(itemInfo.lub): 
lua53.exe multi-tools.lub mergeidnum "%inputfolder%" "%itemInfo%"
pause
