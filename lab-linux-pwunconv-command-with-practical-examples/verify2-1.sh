#!/bin/bash
if grep -q ':$' /etc/shadow; then
  exit 0
else
  exit 1
fi