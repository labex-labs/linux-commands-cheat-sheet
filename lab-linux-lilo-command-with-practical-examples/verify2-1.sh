#!/bin/bash
if grep -q "label=Ubuntu 22.04" /etc/lilo.conf; then
  exit 0
else
  echo "The lilo configuration file does not contain the expected 'label=Ubuntu 22.04' entry."
  exit 1
fi