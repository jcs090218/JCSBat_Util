@echo off
:: ========================================================================
:: $File: jcs_vim.bat $
:: $Date: 2017-10-12 13:54:56 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2017 by Shen, Jen-Chieh $
:: ========================================================================


:: DESCRIPTION(jenchieh): Open vim with your own '_vimrc' file.

set VIMRC_PATH=

set DRIVE_LETTER=
set USER_NAME=

:: Run Vim with set the %HOME% variables.
set HOME=%DRIVE_LETTER%:\Users\%USER_NAME%

:: Run vim.
%VIMRC_PATH%\vim80\vim.exe
