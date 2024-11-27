#!/bin/bash
if whois -h whois.verisign-grs.com example.com | grep -q "Domain Name: EXAMPLE.COM"; then
  exit 0
else
  echo "The customized whois command did not return the expected output for the example.com domain."
  exit 1
fi