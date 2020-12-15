@echo off
:: ========================================================================
:: $File: jcs_clear_dir.bat $
:: $Date: 2016-12-22 04:53:16 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2016 by Shen, Jen-Chieh $
:: ========================================================================


:ask_to_delete
echo You sure you want to delete all the files and directories? (y/n):
set /p SURE=

if /i "%SURE%"=="y" goto i_am_sure
if /i "%SURE%"=="n" goto end
echo Incorrect input & goto ask_to_delete

:i_am_sure
FOR /D %%p IN ("%CD%*.*") DO rmdir "%%p" /s /q
del *.* /q

:: ------------ end block --------------
:end
exit /b
