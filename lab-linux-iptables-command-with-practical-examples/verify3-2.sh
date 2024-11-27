#!/bin/bash
if sudo iptables -t nat -L POSTROUTING | grep -q 'MASQUERADE.*-o eth0'; then
  exit 0
else
  echo "The NAT masquerade rule is not found."
  exit 1
fi