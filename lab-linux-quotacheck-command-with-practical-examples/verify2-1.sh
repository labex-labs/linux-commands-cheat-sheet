#!/bin/bash
if sudo quotaon -v | grep -q "/mnt/quota: Quotas turned on"; then
  exit 0
else
  exit 1
fi