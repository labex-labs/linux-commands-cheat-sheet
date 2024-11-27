#!/bin/bash
if ! nslookup example.com | grep -q "Address: "; then
    echo "Failed to perform a basic DNS lookup for example.com using nslookup."
    exit 1
fi

if ! nslookup -type=any example.com | grep -q "mail exchanger ="; then
    echo "Failed to retrieve DNS records for example.com using nslookup."
    exit 1
fi

if ! nslookup 8.8.8.8 | grep -q "dns.google."; then
    echo "Failed to perform a reverse DNS lookup for 8.8.8.8 using nslookup."
    exit 1
fi

echo "Verified basic DNS lookup operations using nslookup successfully."
exit 0