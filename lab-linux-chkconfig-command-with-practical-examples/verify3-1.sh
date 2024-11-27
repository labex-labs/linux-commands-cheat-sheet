#!/bin/bash
if sudo chkconfig --list nginx | grep -q "2:on    3:on    4:on    5:off   6:on"; then
  exit 0
else
  echo "The nginx service is not configured as expected."
  exit 1
fi