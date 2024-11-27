#!/bin/bash
if sudo atq | grep -q "2"; then
  exit 1
else
  exit 0
fi