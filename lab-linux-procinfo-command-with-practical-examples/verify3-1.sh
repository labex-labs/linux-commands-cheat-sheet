#!/bin/bash
if sudo procinfo -C | grep -q "CPU0" && sudo procinfo -C | grep -q "CPU1"; then
  exit 0
else
  exit 1
fi