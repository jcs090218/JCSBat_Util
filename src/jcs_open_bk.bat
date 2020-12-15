@echo off
:: ========================================================================
:: $File: jcs_open_bk.bat $
:: $Date: 2018-06-25 21:50:52 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                   Copyright © 2018 by Shen, Jen-Chieh $
:: ========================================================================

:: Get the drive letter.
set BACK_UP_DRIVE=%1:\

IF [%1] == [] GOTO error

set CURRENT_PATH=%CD%
set CURRENT_PATH_WITHOUT_DRIVE_LETTER=%CD:~3%

set BACK_UP_PATH=%BACK_UP_DRIVE%%CURRENT_PATH_WITHOUT_DRIVE_LETTER%

explorer "%BACK_UP_PATH%"

GOTO end

:error
echo No drive letter provided...

:end
exit
