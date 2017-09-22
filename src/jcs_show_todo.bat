@echo off
:: ========================================================================
:: $File: jcs_todo.bat $
:: $Date: 2017-09-23 05:17:13 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2017 by Shen, Jen-Chieh $
:: ========================================================================

:: ------------------------------------------------------------------------
:: Show the todo file in terminal.
:: ------------------------------------------------------------------------
:: Set the todo file path here..
set TODO_FILE_PATH=
::------------------------------------------------------------------------


type "%TODO_FILE_PATH%"

exit /b
