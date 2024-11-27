#!/bin/bash
if sudo procinfo -M | grep -q "Total" && sudo procinfo -M | grep -q "Free"; then
  exit 0
else
  exit 1
fi