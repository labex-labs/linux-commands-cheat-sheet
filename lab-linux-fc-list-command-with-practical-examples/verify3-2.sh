#!/bin/bash
if sudo fc-list --format='%{family}:%{style}\n' | grep -q "DejaVu Sans:Bold"; then
  exit 0
else
  exit 1
fi