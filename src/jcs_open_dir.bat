@echo off
REM ========================================================================
REM $File: jcs_open_dir.bat $
REM $Date: 2016-12-31 04:56:17 $
REM $Revision: $
REM $Creator: Jen-Chieh Shen $
REM $Notice: See LICENSE.txt for modification and distribution information
REM                    Copyright (c) 2016 by Shen, Jen-Chieh $
REM ========================================================================


REM ------------------------------------------------------------------------
REM How to use this?
REM ------------------------------------------------------------------------
REM open the backup directory depends on the hard drive applied.
set BACK_UP_DRIVE=G:\
REM ------------------------------------------------------------------------

set CURRENT_PATH=%CD%
set CURRENT_PATH_WITHOUT_DRIVE_LETTER=%CD:~3%

set BACK_UP_PATH=%BACK_UP_DRIVE%%CURRENT_PATH_WITHOUT_DRIVE_LETTER%

explorer %BACK_UP_PATH%

exit /b
