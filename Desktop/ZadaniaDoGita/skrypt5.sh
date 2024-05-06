#!/bin/bash
if [ "$1" = "--help" ]; then
  echo "Dostępne opcje:"
  echo "--logs: Utwórz 100 plików logX.txt, gdzie X to numer pliku od 1 do 100."
  echo "--logs30 <liczba_plikow>: Utwórz zadaną liczbę plików logX.txt, gdzie X to numer pliku od 1 do liczba_plikow."
  echo "--date: Wyświetl dzisiejszą datę."
  echo " plik.gitignore, który ignoruje wszystkie pliki zawierające w nazwie ciąg znaków log"
  exit 0
else
  echo "Niepoprawna flaga. Użycie: skrypt.sh --help"
  exit 1
fi
