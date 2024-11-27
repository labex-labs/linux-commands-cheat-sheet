#!/bin/bash
if atq | grep -q "1"; then
  exit 1
else
  exit 0
fi