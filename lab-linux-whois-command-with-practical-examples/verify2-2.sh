#!/bin/bash
if whois google.com | grep -q "Domain Name: GOOGLE.COM"; then
  exit 0
else
  echo "The whois command did not return the expected output for the google.com domain."
  exit 1
fi