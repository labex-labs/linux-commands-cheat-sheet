#!/bin/bash
if grep -q ':x:' /etc/passwd; then
  exit 0
else
  exit 1
fi