#!/bin/bash
if sudo iptables-save | grep -q "ACCEPT"; then
  exit 0
else
  echo "iptables-save command did not output the expected firewall rules"
  exit 1
fi