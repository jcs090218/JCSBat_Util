@echo off
:: ========================================================================
:: $File: jcs_open_todo.bat $
:: $Date: 2017-09-23 05:31:01 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2017 by Shen, Jen-Chieh $
:: ========================================================================

:: ------------------------------------------------------------------------
:: Open the todo file.
:: ------------------------------------------------------------------------
:: Set the todo file path here..
set TODO_FILE_PATH=
::------------------------------------------------------------------------


notepad "%TODO_FILE_PATH%"

exit /b
