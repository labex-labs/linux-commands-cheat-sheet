#!/bin/bash
if ls -l /etc/rc2.d/ | grep -q "S18rsyslog"; then
  exit 0
else
  exit 1
fi