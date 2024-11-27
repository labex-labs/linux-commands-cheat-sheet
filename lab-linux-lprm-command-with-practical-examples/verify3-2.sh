#!/bin/bash
if sudo lpq | grep -q "Rank"; then
  exit 1
else
  exit 0
fi