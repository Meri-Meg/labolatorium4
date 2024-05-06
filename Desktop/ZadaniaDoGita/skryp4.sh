#!/bin/bash
if [[ "$1" != "--logs30" || -z "$2" ]]; then
	echo "Uzycie: $0 --logs30 [liczba_plikow]"
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
