#!/bin/bash
if [[ "$1" != "--logs" ]]; then
	echo "Uzycie: $0 --logs"
	exit 1
fi
for (( i=1; i<=100; i++ )); do
	nazwa_pliku"log${i}.txt"
	echo "Nazwa pliku: $nazwa_pliku" > "$nazwa_pliku"
	echo "Nazwa skryptu: $0" >> "$nazwa_pliku"
	echo "Data utworzenia: $(date)" >> "$nazwa_pliku"
done
