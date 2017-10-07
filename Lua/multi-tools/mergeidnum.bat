@echo off
:Start
set /p inputfolder=Enter Input Folder: 
set /p itemInfo=Enter Output FileName(itemInfo.lub): 
set /p itemDb=Enter item_db.conf Name(item_db.conf/item_db.txt/null): 
lua53.exe multi-tools.lub mergeidnum "%inputfolder%" "%itemInfo%" "%itemDb%"
pause
