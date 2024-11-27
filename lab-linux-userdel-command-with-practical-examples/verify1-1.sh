#!/bin/bash
if id testuser &>/dev/null; then
  exit 1
else
  exit 0
fi