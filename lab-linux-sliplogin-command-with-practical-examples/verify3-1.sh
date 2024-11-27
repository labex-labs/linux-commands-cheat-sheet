#!/bin/bash
if ! sudo sliplogin -f ~/project/sliplogin.conf > /dev/null 2>&1; then
  exit 1
fi
if ! ifconfig slip0 | grep -q "192.168.1.1"; then
  exit 1
fi
echo "sliplogin troubleshooting verified successfully."
exit 0