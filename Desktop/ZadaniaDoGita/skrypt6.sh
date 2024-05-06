#!/bin/bash
if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
    current_date=$(date +"%Y-%m-%d")
    echo "Dzisiejsza data: $current_date"
    exit 0
fi
if [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
    for ((i=1; i<=100; i++)); do
        filename="log$i.txt"
        echo "Nazwa pliku: $filename" > "$filename"
        echo "Nazwa skryptu: skrypt.sh" >> "$filename"
        echo "Data utworzenia: $(date)" >> "$filename"
    done
    echo "Utworzono 100 plików logX.txt."
    exit 0
fi
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Dostępne opcje:"
    echo "--logs: Utwórz 100 plików logX.txt, gdzie X to numer pliku od 1 do 100."
    echo "--logs30 <liczba_plikow>: Utwórz zadaną liczbę plików logX.txt, gdzie X to numer pliku od 1 do liczba_plikow."
    echo "--date: Wyświetl dzisiejszą datę."
    echo " plik.gitignore, który ignoruje wszystkie pliki zawierające w nazwie ciąg znaków log"
    echo "Dodatkowe opcje:"
    echo "-h, --help: Wyświetl pomoc"
    echo "-l, --logs: Utwórz 100 plików logX.txt"
    echo "-d, --date: Wyświetl dzisiejszą datę"
    exit 0
fi
echo "Niepoprawna flaga. Użycie: skrypt.sh --help"
exit 1
