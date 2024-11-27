#!/bin/bash
if systemctl is-active --quiet acpid; then
  exit 0
else
  echo "acpid service is not running."
  exit 1
fi