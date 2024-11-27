#!/bin/bash
if [ -z "$(which mdadm)" ]; then
  echo "mdadm command not found. Please ensure you have the necessary packages installed."
  exit 1
else
  echo "mdadm command found, indicating an understanding of software RAID."
  exit 0
fi