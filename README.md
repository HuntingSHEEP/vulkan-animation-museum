
# Projekt ADiGR

Aplikacja łącząca najlepsze cechy przedmiotów Proceduralnego Generowania Treści oraz Sztucznej Inteligencji w Grafice Komputerowej


## Klonowanie repozytorium

Aby sklonować repozytorium należy uruchomić w terminalu polecenie **git clone**

```bash
  git clone https://github.com/HuntingSHEEP/adigrProject.git
```

W katalogu bin znajduje się najnowszy plik wykonywalny. W przypadku nieuruchomienia się .exe możliwe że konieczne będzie przeprowadzenie samodzielnej kompilacji.
## Kompilacja

Do przeprowadzenia procesu budowy wymagany jest CMake przynajmniej w wersji 3.5:

```bash
cmake --version
```

Aby uruchomić proces budowy należy uruchomić plik **setup.bat**, spowoduje to utworzenie katalogu build oraz umieszczenie w nim konfiguracji projektu Visual Studio. Można to zrobić z poziomu GitBash uruchomionego w głównym katalogu projektu:

```bash
./setup.bat
```
Kompilację można przeprowadzić na dwa sposoby. Pierwszym z nich jest uruchomienie pliku wsadowego **compile.bat**:

```bash
./compile.bat
```

natomiast drugą metodą jest kompilacja za pośrednictwem Visual Studio. Projekt *.sln* znajduje się w katalogu build.

Zarówno pierwsza jak i druga metoda kompilacji skutkuje skopiowaniem pliku wykonywalnego do katalogu bin.


## Kompilacja shaderów
Możliwe jest niezależne modyfikowanie oraz komipilacja shaderów. Został przygotowany osobny plik **compile.bat** w katalogu **resources\shaders\src**:

```bash
cd resources/shaders/src/
./compile.bat
```