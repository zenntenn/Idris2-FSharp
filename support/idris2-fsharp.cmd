@echo off
set APPDIR=%~dp0
set PATH=%APPDIR%\idris2-fsharp_app;%PATH%
"C:\msys64\home\joshua.hillerup\ChezScheme\ta6nt\bin\ta6nt/scheme.exe" --script "%APPDIR%/idris2-fsharp_app\idris2-fsharp.so" %*
