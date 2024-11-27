#!/bin/bash
if sudo iptables -t nat -L PREROUTING | grep -q 'DNAT.*dport 8080.*to:127.0.0.1:80'; then
  exit 0
else
  echo "The port forwarding rule is not found."
  exit 1
fi