#!/bin/bash
if sudo repquota -u labex | grep -q "labex"; then
  exit 0
else
  exit 1
fi