#!/bin/bash
if grep -q "labex" /etc/shadow; then
  exit 0
else
  exit 1
fi