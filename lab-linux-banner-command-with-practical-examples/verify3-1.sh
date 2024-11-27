#!/bin/bash
if ! banner -f script -w 40 "Customized Banner" | grep -q "_   _      _ _        __        __"; then
  exit 1
fi