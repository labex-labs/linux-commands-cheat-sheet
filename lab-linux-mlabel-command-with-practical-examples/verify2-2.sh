#!/bin/bash
if sudo mlabel -s /dev/sdb1 | grep -q "Updated Data Volume"; then
  exit 0
else
  exit 1
fi