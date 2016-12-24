@echo off
REM ========================================================================
REM $File: jcs_cygwin.bat $
REM $Date: 2016-12-21 19:17:37 $
REM $Revision: $
REM $Creator: Jen-Chieh Shen $
REM $Notice: See LICENSE.txt for modification and distribution information
REM                    Copyright (c) 2016 by Shen, Jen-Chieh $
REM ========================================================================


set CYGWIN_URL=https://cygwin.com/setup-x86_64.exe
set CYGWIN_EXE=setup-x86_64

REM run the cygwin.exe file
setup-x86_64.exe

exit /b
