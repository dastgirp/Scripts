@echo off
set /p range1=Enter Item Range to start item_name copying: 
set /p range2=Enter Item Range to end item_name copying: 
set /p conffile=Enter item_db.Conf FileName: 
set /p textfile=Enter idnum2itemdisplaynametable.txt/iteminfo.lua/iteminfo.lub FileName: 
set /p output=Output File Name: 
lua53i.exe multi-tools.lub copydisplayname %range1% %range2% "%textfile%" "%conffile%" "%output%"
pause
