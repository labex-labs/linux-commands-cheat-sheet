#!/bin/bash
if sudo hwclock | grep -q "2023-04-11 13:00:00"; then
  exit 0
else
  exit 1
fi