@echo off
REM ========================================================================
REM $File: jcs_tar_compress.bat $
REM $Date: 2016-12-13 17:01:45 $
REM $Revision: $
REM $Creator: Jen-Chieh Shen $
REM $Notice: See LICENSE.txt for modification and distribution information
REM                    Copyright (c) 2016 by Shen, Jen-Chieh $
REM ========================================================================


for %%* in (.) do set PROJECT_NAME=%%~nx*

set CURRENT_DIR=%CD%

REM up one directory and set the target directory.
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


REM ------------ end block --------------
:end 
exit /b     REM end the script without closing the terminal process.
