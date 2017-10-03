@echo off
:: ========================================================================
:: $File: jcs_open_dir_reverse.bat $
:: $Date: 2017-10-03 12:22:50 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2017 by Shen, Jen-Chieh $
:: ========================================================================



:: ------------------------------------------------------------------------
:: How to use this?
:: ------------------------------------------------------------------------
:: open the backup directory depends on the hard drive applied.
:: C drive is the default windows's OS system drive.
set BACK_UP_DRIVE=C:\
:: ------------------------------------------------------------------------

set CURRENT_PATH=%CD%
set CURRENT_PATH_WITHOUT_DRIVE_LETTER=%CD:~3%

set BACK_UP_PATH=%BACK_UP_DRIVE%%CURRENT_PATH_WITHOUT_DRIVE_LETTER%

explorer %BACK_UP_PATH%

exit /b
