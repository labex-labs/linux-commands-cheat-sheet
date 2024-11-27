#!/bin/bash
if sudo quotacheck -avugm /mnt/quota | grep -q "/mnt/quota: checked 1 directories and 1 files"; then
  exit 0
else
  exit 1
fi