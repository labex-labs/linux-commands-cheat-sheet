#!/bin/bash
if ! w | grep -q "load average"; then
  exit 1
fi