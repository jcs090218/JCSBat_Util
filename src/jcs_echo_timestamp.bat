@echo off
:: ========================================================================
:: $File: jcs_echo_timestamp.bat $
:: $Date: 2018-06-19 17:35:51 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                   Copyright © 2018 by Shen, Jen-Chieh $
:: ========================================================================


SET HOUR=%time:~0,2%

SET year=%date:~-4%
SET month=%date:~4,2%
SET day=%date:~7,2%
SET hour9=0%time:~1,1%
SET hour24=%time:~0,2%
SET min=%time:~3,2%
SET sec=%time:~6,2%

:: Version 1
SET dtStamp9_ver1=%year%-%month%-%day% %hour9%:%min%:%sec%
SET dtStamp24_ver1=%year%-%month%-%day% %hour24%:%min%:%sec%

:: Version 2
SET dtStamp9_ver2=%year%/%month%/%day% %hour9%:%min%:%sec%
SET dtStamp24_ver2=%year%/%month%/%day% %hour24%:%min%:%sec%


if "%HOUR:~0,1%" == " " (
  SET dtStamp_ver1=%dtStamp9_ver1%
  SET dtStamp_ver2=%dtStamp9_ver2%
) else (
  SET dtStamp_ver1=%dtStamp24_ver1%
  SET dtStamp_ver2=%dtStamp24_ver2%
)


echo.
echo Ver. 1 %dtStamp_ver1%
echo Ver. 2 %dtStamp_ver2%
echo.
