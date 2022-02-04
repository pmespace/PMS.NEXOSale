rem @echo off
del *.zip /q
del *.7z /q
set pwd=%1

rem for %%f in (".\*.exe") do echo %%~nf
for %%f in (".\*.exe") do call :zipit %%~nf
goto :end

:zipit
"C:\Program Files\7-Zip\7z.exe" a -t7z -p%pwd% %1.7z %1.exe
if %errorlevel% neq 0 goto :7zerror
"C:\Program Files\7-Zip\7z.exe" a -tzip -p%pwd% %1.zip %1.7z
if %errorlevel% neq 0 goto :ziperror
exit /b

:7zerror
echo Erreur en créant le 7Z
goto :end

:ziperror
echo Erreur en créant le ZIP
goto :end

:end
pause