@echo off
REM ========================================================================
REM $File: jcs_tar_exstract.bat $
REM $Date: 2016-12-13 17:15:59 $
REM $Revision: $
REM $Creator: Jen-Chieh Shen $
REM $Notice: See LICENSE.txt for modification and distribution information
REM                    Copyright (c) 2016 by Shen, Jen-Chieh $
REM ========================================================================


echo Enter the file you want to extract: (n)
set /p EXTRACT_FILENAME=

if /i "%EXTRACT_FILENAME%"=="n" goto end

tar -zxvf "%EXTRACT_FILENAME%.tar.gz"

REM ------------ end block --------------
:end 
exit /b     REM end the script without closing the terminal process.
