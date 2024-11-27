#!/bin/bash
if ! top -b -n 1 | grep -q "%Cpu(s)"; then
  exit 1
fi