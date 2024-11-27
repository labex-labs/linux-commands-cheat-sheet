#!/bin/bash
if sudo rpm -V coreutils | grep -q "^."; then
  exit 1
fi