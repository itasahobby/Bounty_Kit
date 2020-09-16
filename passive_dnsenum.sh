#!/bin/bash
# cat domains.txt | xargs -I_arg -- sh -c './passive_dnsenum.sh _arg subdomains.txt' &>/dev/null

if [ "$#" -ne 2 ]; then
    echo "passive_dnsenum.sh example.com output"
    exit
fi

domains="$1"
file="$2"

subdomains=$(subfinder -d $domains & amass enum -passive -d $domains & assetfinder $domains)
echo "$subdomains" | sort -u > $file
