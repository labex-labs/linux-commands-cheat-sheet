#!/bin/bash
if sudo fc-list --format='%{family}\n' | grep -q "DejaVu Sans"; then
  exit 0
else
  exit 1
fi