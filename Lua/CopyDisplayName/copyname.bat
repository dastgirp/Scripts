@echo off
set /p range1=Enter Item Range to start item_name copying: 
set /p range2=Enter Item Range to end item_name copying: 
set /p conffile=Enter item_db.Conf FileName: 
set /p textfile=Enter idnum2itemdisplaynametable FileName: 
lua.exe copyname.lua %range1% %range2% "%conffile%" "%textfile%"
pause
