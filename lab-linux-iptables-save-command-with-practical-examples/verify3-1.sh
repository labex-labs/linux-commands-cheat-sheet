#!/bin/bash
if sudo systemctl status iptables-save.service | grep -q "active (exited)"; then
  if sudo cat /etc/iptables/rules.v4 | grep -q "ACCEPT"; then
    exit 0
  else
    echo "iptables-save service did not save the expected firewall rules"
    exit 1
  fi
else
  echo "iptables-save service is not running or not enabled"
  exit 1
fi