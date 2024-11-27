#!/bin/bash
if grep -q "newuser" /etc/shadow; then
  exit 0
else
  exit 1
fi