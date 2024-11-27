#!/bin/bash
if sudo lpq | grep -q "job \"2\""; then
  exit 1
else
  exit 0
fi