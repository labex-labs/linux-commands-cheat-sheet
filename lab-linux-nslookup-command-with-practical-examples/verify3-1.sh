#!/bin/bash
if ! nslookup non-existent-domain.com | grep -q "NXDOMAIN"; then
    echo "Failed to simulate a DNS resolution failure for non-existent-domain.com using nslookup."
    exit 1
fi

if ! nslookup example.com 8.8.8.8 | grep -q "Address: "; then
    echo "Failed to perform a DNS lookup using a specific DNS server (8.8.8.8) with nslookup."
    exit 1
fi

if ! nslookup -type=ns example.com | grep -q "nameserver ="; then
    echo "Failed to identify the DNS servers responsible for the example.com domain using nslookup."
    exit 1
fi

echo "Verified DNS troubleshooting operations using nslookup successfully."
exit 0