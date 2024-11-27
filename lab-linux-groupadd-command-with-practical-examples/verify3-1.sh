#!/bin/bash
if getent group finance | grep -q ":1050:"; then
  exit 0
else
  exit 1
fi