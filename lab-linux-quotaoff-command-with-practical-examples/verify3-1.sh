#!/bin/bash
if sudo repquota -a | grep -q "Quotas are off"; then
  exit 0
else
  exit 1
fi