#!/bin/bash
dzis=$(date +"%Y-%m-%d")
if [[ "$1" == "--date" ]]; then
	echo "Dzisiejsza data: $dzis"
else
	echo "Nieznana flaga. Uzyj: skryp1.sh --date"
	exit 1
fi
