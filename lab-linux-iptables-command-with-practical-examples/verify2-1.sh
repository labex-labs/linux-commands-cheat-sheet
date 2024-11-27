#!/bin/bash
if sudo iptables -L | grep -q 'ACCEPT.*dport 22' && ! sudo iptables -L | grep -q 'DROP.*dport 80'; then
  exit 0
else
  echo "The rules to allow SSH traffic and remove the block on port 80 are not as expected."
  exit 1
fi