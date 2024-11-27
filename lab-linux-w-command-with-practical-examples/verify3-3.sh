#!/bin/bash
if ! free -h | grep -q "Mem"; then
  exit 1
fi