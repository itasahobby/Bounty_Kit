#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "active_dnsenum.sh subdomains output wordlist"
    exit
fi

domains="$1"	# File containing already known subdomains
file="$2"	# Output file
wordlist="$3"	# Subdomain wordlist

dnsgen -w subdomain_wordlist.txt "$subdomains" > "$file"
