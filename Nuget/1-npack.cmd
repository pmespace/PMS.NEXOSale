@echo off
move /Y *.nupkg .\Sav
nuget pack -p Configuration=..\Release ..\nuget.nuspec
pause
