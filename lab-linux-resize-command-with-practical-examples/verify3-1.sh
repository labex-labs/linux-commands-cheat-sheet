#!/bin/bash
if ! sudo lvdisplay /dev/vg0/lv0 | grep -q "LV Size.*10.00 GiB"; then
  exit 1
fi