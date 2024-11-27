#!/bin/bash
if getent group labex | grep -q "labex:x:1000:"; then
  exit 0
else
  exit 1
fi