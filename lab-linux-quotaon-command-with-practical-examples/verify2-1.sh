#!/bin/bash
if sudo quotaon -a | grep -q "/data: quotas turned on"; then
  exit 0
else
  exit 1
fi