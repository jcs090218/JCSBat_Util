@echo off
:: ========================================================================
:: $File: jcs_vim.bat $
:: $Date: 2017-10-12 13:54:56 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2017 by Shen, Jen-Chieh $
:: ========================================================================

:: DESCRIPTION: Open vim with your own '_vimrc' file.

set VIMRC_PATH=C:\Program Files (x86)\Vim

set DRIVE_LETTER=C
set USER_NAME=JenChieh

:: Run Vim with set the %HOME% variables.
set HOME=%DRIVE_LETTER%:\Users\%USER_NAME%

:: Run vim.
"%VIMRC_PATH%\vim80\vim.exe"
