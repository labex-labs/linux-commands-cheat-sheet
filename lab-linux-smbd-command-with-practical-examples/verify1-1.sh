#!/bin/bash
if systemctl is-active --quiet smbd; then
  exit 0
else
  echo "The smbd service is not running. Please start the service and try again."
  exit 1
fi