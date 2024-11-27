#!/bin/bash
if [ "$(ls -1 /var/log/ | grep -c 'custom.log')" -ne 5 ]; then
  exit 1
fi