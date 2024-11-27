#!/bin/bash
if locate bash | grep -q "/bin/bash"; then
  exit 0
else
  echo "The locate command did not find the /bin/bash file."
  exit 1
fi