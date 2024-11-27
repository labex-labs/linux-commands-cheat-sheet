#!/bin/bash
if nmcli device status | grep -q 'eth0.*connected'; then
  exit 0
else
  exit 1
fi