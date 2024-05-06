#!/bin/bash
if [ "$1" = "--date" ]; then
    current_date=$(date +"%Y-%m-%d")
    echo "Dzisiejsza data: $current_date"
else
    echo "Użycie: $0 --date"
    echo "Flaga --date wyświetla dzisiejszą datę."
fi
