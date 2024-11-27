#!/bin/bash
if grep -q "forgottenuser" /etc/shadow; then
  exit 0
else
  exit 1
fi