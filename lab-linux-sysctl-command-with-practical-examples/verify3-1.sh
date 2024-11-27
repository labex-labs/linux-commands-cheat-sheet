#!/bin/bash
if grep -q "net.ipv4.ip_forward=1" /etc/sysctl.conf && grep -q "vm.swappiness=10" /etc/sysctl.conf; then
  exit 0
else
  echo "The sysctl configuration changes were not made persistent in the /etc/sysctl.conf file."
  exit 1
fi