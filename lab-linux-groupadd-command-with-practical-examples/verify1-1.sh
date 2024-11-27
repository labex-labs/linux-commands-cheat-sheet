#!/bin/bash
if grep -q "developers" /etc/group; then
  exit 0
else
  exit 1
fi