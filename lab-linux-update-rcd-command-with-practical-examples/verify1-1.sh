#!/bin/bash
if grep -q "nginx" /etc/rc2.d/*; then
  exit 0
else
  exit 1
fi