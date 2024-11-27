#!/bin/bash
if command -v iostat >/dev/null; then
  exit 0
else
  exit 1
fi