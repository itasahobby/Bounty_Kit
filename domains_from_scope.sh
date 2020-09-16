#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "domains_from_scope.sh example.com output_file"
    exit
fi

scope="$1"
file="$2"

cat "$scope" | awk -F. '{print $(NF-1)"."$NF}' | sort -u > "$file"
