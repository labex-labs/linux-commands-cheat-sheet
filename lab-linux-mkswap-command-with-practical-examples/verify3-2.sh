#!/bin/bash
if ! free -h | grep -q "2.0Gi"; then
  exit 1
else
  exit 0
fi