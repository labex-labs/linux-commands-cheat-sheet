#!/bin/bash
if sudo uucico -r1 -ssystem | grep -q "Connected."; then
  exit 0
else
  exit 1
fi