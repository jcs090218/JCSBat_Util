@echo off
:: ========================================================================
:: $File: jcs_tar_exstract.bat $
:: $Date: 2016-12-13 17:15:59 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2016 by Shen, Jen-Chieh $
:: ========================================================================

echo Enter the file you want to extract: (n)
set /p EXTRACT_FILENAME=

if /i "%EXTRACT_FILENAME%"=="n" goto end

tar -zxvf "%EXTRACT_FILENAME%.tar.gz"

:: ------------ end block --------------
:end
exit /b     REM end the script without closing the terminal process.
