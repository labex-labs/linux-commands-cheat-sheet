#!/bin/bash
if sudo setserial -g /dev/ttyS* | grep -q "uart:16550A"; then
  exit 0
else
  echo "Failed to retrieve serial port information using setserial"
  exit 1
fi