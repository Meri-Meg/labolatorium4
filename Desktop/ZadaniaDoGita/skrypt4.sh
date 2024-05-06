#!/bin/bash
if [ "$1" != "--logs30" ]; then
  echo "Niepoprawna flaga. Użycie: skrypt.sh --logs30"
  exit 1
fi
if [ -z "$2" ]; then
  echo "Nie podano liczby plików. Użycie: skrypt.sh --logs30 <liczba_plikow>"
  exit 1
fi
num_files=$2
for ((i=1; i<=$num_files; i++)); do
  filename="log$i.txt"
  echo "Nazwa pliku: $filename" > "$filename"
  echo "Nazwa skryptu: skrypt.sh" >> "$filename"
  echo "Data utworzenia: $(date)" >> "$filename"
done
echo "Utworzono $num_files plików logX.txt."
