@echo off
del *.zip /q
del *.7z /q

rem if []==[%1] goto :getpwd
set pwd=nexoSale
goto :startzipping

:getpwd
set /p pwd="Password: " || set pwd=NothingChosen
if "NothingChosen"=="%pwd%" goto :nopwd

:startzipping
rem for %%f in (".\*.exe") do echo %%~nf
for %%f in (".\*.exe") do call :zipit %%~nf
goto :end

:zipit
"C:\Program Files\7-Zip\7z.exe" a -t7z -p%pwd% %1.7z %1.exe
if %errorlevel% neq 0 goto :7zerror
"C:\Program Files\7-Zip\7z.exe" a -tzip -p%pwd% %1.zip %1.7z
if %errorlevel% neq 0 goto :ziperror
echo:OK (%pwd%)
exit /b

:nopwd
echo:Erreur, pas de mot de passe
goto :end

:7zerror
echo:Erreur en créant le 7Z
goto :end

:ziperror
echo:Erreur en créant le ZIP
goto :end

:end
pause