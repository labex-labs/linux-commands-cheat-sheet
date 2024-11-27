#!/bin/bash
if sudo fc-list | grep -q "DejaVu Sans"; then
  exit 0
else
  exit 1
fi