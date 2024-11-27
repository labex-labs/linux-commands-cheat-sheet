#!/bin/bash
if ! dosfsck --help | grep -q "check and repair DOS file systems"; then
  exit 1
fi