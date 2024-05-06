#!/bin/bash
if [ "$1" = "--error" ] || [ "$1" = "-e" ]; then
    if [ -z "$2" ]; then
        num_files=100
    else
        num_files=$2
    fi
    for ((i=1; i<=$num_files; i++)); do
        filename="error$i.txt"
        echo "Error message $i" > "$filename"
    done
    git add .gitignore
    git commit -m "Modified .gitignore to include error files"
    exit 0
fi
