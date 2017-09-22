@echo off
:: ========================================================================
:: $File: jcs_emacs_todo.bat $
:: $Date: 2017-09-23 05:45:28 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2017 by Shen, Jen-Chieh $
:: ========================================================================

:: ------------------------------------------------------------------------
:: Open the todo file in Emacs.
:: ------------------------------------------------------------------------
:: Set the todo file path here..
set TODO_FILE_PATH=
::------------------------------------------------------------------------


emacs "%TODO_FILE_PATH%" -nw

exit /b
