@echo off
:: ========================================================================
:: $File: jcs_dic.bat $
:: $Date: 2018-10-18 18:59:08 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                   Copyright © 2018 by Shen, Jen-Chieh $
:: ========================================================================


SET word=%1

if [%1]==[] ( goto prompt
) else ( goto result )


:: Prompt script usage.
:prompt

echo.
echo   ** Dictionary Usage **
echo.
echo   Type the word you want to search in dictionary.
echo.
echo      jcs_dic { $word }
echo.
echo.

goto end


:result

:: `start' command will check if is a url. If is the url then run the
:: default browser.
start https://www.collinsdictionary.com/dictionary/english/%word%


:end
:: end of the program.
