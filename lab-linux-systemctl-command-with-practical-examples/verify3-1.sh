#!/bin/bash
if sudo systemctl is-enabled myservice.service | grep -q 'enabled'; then
  if sudo systemctl is-active myservice.service | grep -q 'active'; then
    exit 0
  else
    exit 1
  fi
else
  exit 1
fi