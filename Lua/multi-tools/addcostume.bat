@echo off
:Start
set /p input=Enter input(itemInfo.lua):
set /p output=Enter Output FileName(itemInfo_out.lua): 
lua53.exe multi-tools.lub addcostume "%input%" "%output%"
pause
