@echo off
:: ========================================================================
:: $File: jcs_vim_todo.bat $
:: $Date: 2017-09-23 05:47:12 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2017 by Shen, Jen-Chieh $
:: ========================================================================

:: ------------------------------------------------------------------------
:: Open the todo file in Vim.
:: ------------------------------------------------------------------------
:: Set the todo file path here..
set TODO_FILE_PATH=
::------------------------------------------------------------------------


vim "%TODO_FILE_PATH%"

exit /b
