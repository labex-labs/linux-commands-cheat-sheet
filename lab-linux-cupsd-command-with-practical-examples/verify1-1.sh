#!/bin/bash
if systemctl is-active cups; then
  exit 0
else
  echo "CUPS service is not running. Please check the status."
  exit 1
fi