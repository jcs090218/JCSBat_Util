@echo off
:: ========================================================================
:: $File: jcs_backup_dir.bat $
:: $Date: 2016-12-12 23:38:37 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2016 by Shen, Jen-Chieh $
:: ========================================================================

:: ------------------------------------------------------------------------
:: How to use this?
:: ------------------------------------------------------------------------
:: This will copy the file to exactly the same folder but
:: different hard drive letter.
set BACK_UP_DRIVE=G:\
:: ------------------------------------------------------------------------

set CURRENT_PATH=%CD%
set CURRENT_PATH_WITHOUT_DRIVE_LETTER=%CD:~3%


:continue_ask
:: combine the backup drive and current path.
set BACK_UP_PATH=%BACK_UP_DRIVE%%CURRENT_PATH_WITHOUT_DRIVE_LETTER%

echo.
echo Target backup path: %BACK_UP_PATH%
echo continue? (y/n):

:: this will pause and ask for input.
set /p CONTINUE_INPUT=
echo.


if /i "%CONTINUE_INPUT%"=="y" goto yes_backup
if /i "%CONTINUE_INPUT%"=="n" goto end

echo Incorrect input & goto continue_ask

:: ------------ yes_backup block -------------
:yes_backup
echo Start backing up the directory to target diretory...

REM remove the what ever the copy are previously
rmdir %BACK_UP_PATH% /s /q

:: copy the whole folder to evironment root directory
 :: SOURCE(jenchieh): http://www.microsoft.com/resources/documentation/windows/xp/all/proddocs/en-us/xcopy.mspx?mfr=true
xcopy /e %CURRENT_PATH% %BACK_UP_PATH%

echo Done backing up the file.

:open_target_dir_ask
echo Do you want to open the backup file? (y/n):
set /p OPEN_TARGET_DIR=

if /i "%OPEN_TARGET_DIR%"=="y" goto yes_open_target_dir
if /i "%OPEN_TARGET_DIR%"=="n" goto end
echo Incorrect input & goto open_target_dir_ask

:: ------------ yes_open_target_dir block --------------
:yes_open_target_dir

explorer %BACK_UP_PATH%

:: ------------ end block --------------
:end
exit /b     REM end the script without closing the terminal process.
