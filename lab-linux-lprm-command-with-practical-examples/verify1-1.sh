#!/bin/bash
if sudo lpq | grep -q "job \"1\" dequeued"; then
  exit 0
else
  exit 1
fi