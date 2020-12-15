@echo off
:: ========================================================================
:: $File: jcs_unrar_c.bat $
:: $Date: 2016-12-14 13:15:36 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2016 by Shen, Jen-Chieh $
:: ========================================================================

:: ============================================================
:: errorcode401.blogspot.in
title Rar Password Cracker
:: mode con: cols=47 lines=20
copy “C:\Program Files\WinRAR\UnRAR.exe”
SET PSWD=0
SET DEST=%TEMP%\%RANDOM%
MD %DEST%
:RAR
cls
echo ========================================================
echo                   GET DETAIL
echo ========================================================
echo.
SET /P FILE_NAME=Enter File Name:
IF “%FILE_NAME%”==”” goto NERROR
goto NEXT

:NERROR
echo ========================================================
echo                      ERROR
echo ========================================================
echo Sorry you can’t leave it blank.
pause
goto RAR

:PERROR
echo ========================================================
echo                      ERROR
echo ========================================================
echo Sorry you can’t leave it blank.
pause
goto RAR

:NEXT
IF EXIST %CD%\%FILE_NAME% GOTO START
goto PATH

:PATH
cls
echo ========================================================
echo                     ERROR
echo ========================================================
echo Opppss File does not Exist..
echo %CD%\%FILE_NAME%
pause
goto RAR

:START
SET /A PSWD=%PSWD%+1
UNRAR t -P"%PSWD%" %CD%\%FILE_NAME%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START

:FINISH
RD %DEST% /Q /S
del “UnRAR.exe”
cls
echo ========================================================
echo                     CRACKED
echo ========================================================
echo.
echo PASSWORD FOUND!
echo FILE  = %FILE_NAME%
echo CRACKED PASSWORD = %PSWD%
pause>NUL
exit /b
REM ============================================================
