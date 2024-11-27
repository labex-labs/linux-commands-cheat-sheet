#!/bin/bash
if whois non-existent-domain.com | grep -q "No match for"; then
  exit 0
else
  echo "The whois command did not handle the exception for a non-existent domain properly."
  exit 1
fi