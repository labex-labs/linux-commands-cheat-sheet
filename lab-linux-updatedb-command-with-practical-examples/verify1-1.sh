#!/bin/bash
if [ -f /var/lib/mlocate/mlocate.db ]; then
  exit 0
else
  echo "The updatedb command did not update the locate database."
  exit 1
fi