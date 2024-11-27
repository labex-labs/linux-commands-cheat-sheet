#!/bin/bash
if [ -z "$(history | grep -c 'sync')" ]; then
  exit 1
else
  exit 0
fi