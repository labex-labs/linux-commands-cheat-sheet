#!/bin/bash
if sudo dosfsck -n /dev/sdb1 | grep -q "errors found"; then
  exit 1
fi