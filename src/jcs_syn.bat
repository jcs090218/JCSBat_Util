@echo off
:: ========================================================================
:: $File: jcs_syn.bat $
:: $Date: 2019-03-22 22:04:16 $
:: $Revision: $
:: $Creator: Jen-Chieh Shen $
:: $Notice: See LICENSE.txt for modification and distribution information
::                   Copyright © 2019 by Shen, Jen-Chieh $
:: ========================================================================


:: DESCRIPTION(jenchieh): Open dictionary in the browser by passing the word
:: you want to search for synonyms.

SET word=%1

if [%1]==[] ( goto prompt
) else ( goto result )


:: Prompt script usage.
:prompt

echo.
echo   ** Dictionary Usage - (Synonyms) **
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
start https://www.collinsdictionary.com/dictionary/english-thesaurus/%word%


:end
:: end of the program.
