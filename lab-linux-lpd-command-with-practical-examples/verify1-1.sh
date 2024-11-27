#!/bin/bash
if systemctl is-active lpd; then
  exit 0
else
  echo "The lpd service is not active. Please check the service status."
  exit 1
fi