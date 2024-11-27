#!/bin/bash
if systemctl is-active --quiet apache2; then
  exit 0
else
  echo "Apache HTTP Server is not running."
  exit 1
fi