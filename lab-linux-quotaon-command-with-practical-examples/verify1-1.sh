#!/bin/bash
if sudo quotaon -a | grep -q "/: quotas turned on"; then
  exit 0
else
  exit 1
fi