#!/bin/bash
show_help() {
	echo "Uzycie: $0 [--logs30 LICZBA_PLIKOW] [--help]"
	echo ""
	echo "Opcje:"
	echo " --logs30 LICZBA_PUNKTOW  Utworzenie automatycznie okreslonej liczby plik
	echo "                          LICZBA_PLIKOW - liczba calkowita dodatnia."
	echo "   --help               	Wyswietlenie wszystkich dostepnych opcji."
	echo ""
if [[ "$1" == "--help" ]]; then
	show_help
	exit 0
fi
if [[ "$1" != "--logs30" || -z "$2" ]]; then
	echo "Uzycie: $0 --logs30 LICZBA_PLIKOW"
	exit 1
fi
liczba_plikow=$2
if ! [[ "$liczba_plikow" =~ ^[0-9]+$ ]]; then
	echo "Podana liczba_plikow nie jest liczba calkowita dodatnia."
	exit 1
fi
for (( i=1; i<=$liczba_plikow; i++ )); do
	nazwa_pliku="log${i}.txt"
	echo "Nazwa pliku: $nazwa_pliku" > "$nazwa_pliku"
	echo "Nazwa skryptu: $0" >> "$nazwa_pliku"
	echo "Data utworzenia: $(date)" >> "$nazwa_pliku"
done
