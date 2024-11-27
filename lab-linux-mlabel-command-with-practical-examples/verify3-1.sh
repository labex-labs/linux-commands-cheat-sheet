#!/bin/bash
if sudo mlabel -s /dev/sdb1 | grep -q "My Invalid Label\*"; then
  exit 0
else
  exit 1
fi