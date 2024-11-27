#!/bin/bash
if getent --help | grep -q "Usage: getent database \[key ...\]"; then
  exit 0
else
  exit 1
fi