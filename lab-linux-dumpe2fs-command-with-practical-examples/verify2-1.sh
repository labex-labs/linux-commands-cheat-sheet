#!/bin/bash
if sudo dumpe2fs /dev/sda1 | grep -q "Filesystem features"; then
  exit 0
else
  echo "The dumpe2fs command did not output the expected filesystem features information."
  exit 1
fi