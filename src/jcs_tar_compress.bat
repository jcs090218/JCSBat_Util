@echo off
:: ========================================================================
:: $File: jcs_tar_compress.bat $
:: $Date: 2016-12-13 17:01:45 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2016 by Shen, Jen-Chieh $
:: ========================================================================

for %%* in (.) do set PROJECT_NAME=%%~nx*

set CURRENT_DIR=%CD%

:: up one directory and set the target directory.
cd ..
set TARGET_DIR=%CD%

echo Start compressing the files...

tar -zcvf "%PROJECT_NAME%.tar.gz" "%PROJECT_NAME%"

echo Done compressing the files.

REM back to where the user original were.
cd %CURRENT_DIR%

:open_target_dir_ask
echo Do you want to check the compressed file? (y/n):
set /p OPEN_TARGET_DIR=

if /i "%OPEN_TARGET_DIR%"=="y" goto yes_open_target_dir
if /i "%OPEN_TARGET_DIR%"=="n" goto end
echo Incorrect input & goto open_target_dir_ask


:yes_open_target_dir
explorer %TARGET_DIR%

:: ------------ end block --------------
:end
exit /b     REM end the script without closing the terminal process.
