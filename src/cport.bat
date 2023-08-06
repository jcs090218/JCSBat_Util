@echo off
:: ========================================================================
:: $File: cport.bat $
:: $Date: 2023-08-05 21:55:41 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                   Copyright © 2023 by Shen, Jen-Chieh $
:: ========================================================================

set PORT=%*

netstat -o -n -a | findstr %PORT%

if %ERRORLEVEL% equ 0 goto FOUND

echo port not found

goto FIN

:FOUND

echo port found

:FIN
