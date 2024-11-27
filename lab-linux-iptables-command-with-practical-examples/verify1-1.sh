#!/bin/bash
if sudo iptables -L | grep -q 'DROP.*dport 80'; then
  exit 0
else
  echo "The rule to block traffic on port 80 is not found."
  exit 1
fi