#!/bin/bash
if sudo iptables -L | grep -q "ACCEPT"; then
  exit 0
else
  echo "iptables-restore did not restore the expected firewall rules"
  exit 1
fi