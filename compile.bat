@echo off

set folderBuild=build
set studio= [SheepStudio]: 
set nazwaProjektu=VK-lighting-cube.exe

echo %studio% Kompilacja shaderow ...
echo.
cd %~dp0resources\shaders\src\
call compile.bat  < nul 
echo.

echo %studio% Kompilacja projektu ...
echo.  
cd %~dp0%folderBuild% 
cmake --build .

echo.  
echo %studio% Kopiowanie pliku %nazwaProjektu% do katalogu bin ...
copy %~dp0build\Debug\%nazwaProjektu% %~dp0\bin > nul

echo %studio% Uruchamianie projektu bin\%nazwaProjektu% ...
cd %~dp0\bin
start %nazwaProjektu%

echo.
pause