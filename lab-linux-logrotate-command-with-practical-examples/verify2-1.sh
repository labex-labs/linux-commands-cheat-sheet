#!/bin/bash
if [ "$(ls -1 /var/log/apache2/ | grep -c '.gz')" -ne 2 ]; then
  exit 1
fi