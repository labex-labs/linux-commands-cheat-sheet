#!/bin/bash
if systemctl is-enabled apache2 | grep -q 'disabled'; then
  exit 0
else
  exit 1
fi