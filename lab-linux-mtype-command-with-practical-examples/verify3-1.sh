#!/bin/bash
if mtype non_ascii.txt | grep -q "こんにちは世界!"; then
  exit 0
else
  exit 1
fi