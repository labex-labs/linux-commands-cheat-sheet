#!/bin/bash
if [ -f /aquota.user -a -f /aquota.group ]; then
  exit 0
else
  exit 1
fi