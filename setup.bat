@echo off
:: ========================================================================
:: $File: setup.bat $
:: $Date: 2017-08-06 18:40:10 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                    Copyright (c) 2017 by Shen, Jen-Chieh $
:: ========================================================================


SET TMP_PATH_TO_SET=%CD%\src\

setx PATH %PATH%;%TMP_PATH_TO_SET%;
