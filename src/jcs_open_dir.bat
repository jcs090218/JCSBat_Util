@echo off
:: ========================================================================
:: $File: jcs_open_dir.bat $
:: $Date: 2016-12-31 04:56:17 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2016 by Shen, Jen-Chieh $
:: ========================================================================


:: DESCRIPTION(jenchieh): open the two backup directories.

:: Open the first backup directory.
start jcs_open_bk G

:: Open the second backup directory.
start jcs_open_bk S

exit /b
