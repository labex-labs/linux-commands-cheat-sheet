#!/bin/bash
if systemctl is-enabled nginx | grep -q 'disabled'; then
  exit 0
else
  exit 1
fi