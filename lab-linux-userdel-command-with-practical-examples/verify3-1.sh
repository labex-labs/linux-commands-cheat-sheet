#!/bin/bash
if [ -d "/home/testuser" ]; then
  exit 1
else
  exit 0
fi