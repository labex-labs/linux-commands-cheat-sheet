#!/bin/bash
if nmcli device status | grep -q 'eth0.*connected'; then
  if nmcli connection show my-ethernet | grep -q 'ipv4.address:.*192.168.1.100/24'; then
    exit 0
  else
    exit 1
  fi
else
  exit 1
fi