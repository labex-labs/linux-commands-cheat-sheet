#!/bin/bash
if sudo setserial /dev/ttyS0 -a | grep -q "Baud_base: 115200" && \
   sudo setserial /dev/ttyS0 -a | grep -q "spd_cust: 1"; then
  exit 0
else
  echo "Failed to configure serial port settings using setserial"
  exit 1
fi