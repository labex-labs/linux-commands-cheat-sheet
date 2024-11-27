#!/bin/bash
if ! banner 2>&1 | grep -q "Usage: banner"; then
  exit 1
fi