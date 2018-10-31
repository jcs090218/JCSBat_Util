@echo off
:: ========================================================================
:: $File: jcs_trans.bat $
:: $Date: 2018-10-31 16:06:08 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                   Copyright © 2018 by Shen, Jen-Chieh $
:: ========================================================================


:: DESCRIPTION(jenchieh): Search for the word translation in the default browser.

SET word=%1

if [%1]==[] (goto prompt
) else (goto result)


:: Prompt script usage.
:prompt

echo.
echo   ** Translator Usage **
echo.
echo   Type the word you want to search in translator.
echo.
echo      jcs_trans { $word }
echo.
echo.

goto end


:result

:: `start' command will check if is a url. If is the url then run the
:: default browser.
start https://translate.google.com/?tl=fa#en/zh-TW/%word%


:end
:: end of the program.
