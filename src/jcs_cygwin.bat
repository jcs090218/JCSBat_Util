@echo off
:: ========================================================================
:: $File: jcs_cygwin.bat $
:: $Date: 2016-12-21 19:17:37 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2016 by Shen, Jen-Chieh $
:: ========================================================================

set CYGWIN_URL=https://cygwin.com/setup-x86_64.exe
set CYGWIN_EXE=setup-x86_64

REM run the cygwin.exe file
setup-x86_64.exe

exit /b
