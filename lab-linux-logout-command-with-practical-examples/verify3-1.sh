#!/bin/bash
if [ ! -f ~/project/auto_logout.sh ]; then
  exit 1
fi
if ! grep -q 'logout' ~/project/auto_logout.sh; then
  exit 1
fi