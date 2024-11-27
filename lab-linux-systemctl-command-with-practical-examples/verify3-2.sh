#!/bin/bash
if sudo grep -q 'Running my service' /var/log/syslog; then
  exit 0
else
  exit 1
fi