#!/bin/bash
if ! localectl status | grep -q 'LANG=en_US.UTF-8'; then
  exit 1
fi