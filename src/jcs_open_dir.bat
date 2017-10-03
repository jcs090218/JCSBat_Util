@echo off
:: ========================================================================
:: $File: jcs_open_dir.bat $
:: $Date: 2016-12-31 04:56:17 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2016 by Shen, Jen-Chieh $
:: ========================================================================


:: ------------------------------------------------------------------------
:: How to use this?
:: ------------------------------------------------------------------------
:: open the backup directory depends on the hard drive applied.
set BACK_UP_DRIVE=G:\
:: ------------------------------------------------------------------------

set CURRENT_PATH=%CD%
set CURRENT_PATH_WITHOUT_DRIVE_LETTER=%CD:~3%

set BACK_UP_PATH=%BACK_UP_DRIVE%%CURRENT_PATH_WITHOUT_DRIVE_LETTER%

explorer %BACK_UP_PATH%

exit /b
