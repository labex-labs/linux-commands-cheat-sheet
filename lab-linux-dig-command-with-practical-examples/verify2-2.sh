#!/bin/bash
if dig -x 8.8.8.8 | grep -q "dns.google."; then
    exit 0
else
    echo "The reverse DNS lookup for 8.8.8.8 did not return the expected domain name"
    exit 1
fi