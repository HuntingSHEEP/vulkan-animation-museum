@echo off
set buildFolder=build
set studio= [SheepStudio]: 

if exist %buildFolder% (
    rd /s /q %buildFolder%
    echo %studio% Folder %buildFolder% zostal usuniety
)

echo %studio% Tworzenie folderu %buildFolder% ...
mkdir %buildFolder%

echo %studio% Tworzenie projektu CMake ...
echo.
cd %~dp0%buildFolder%
cmake ..

echo.
pause