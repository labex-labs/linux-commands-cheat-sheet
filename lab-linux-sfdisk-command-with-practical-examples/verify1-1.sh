#!/bin/bash
sfdisk_version=$(sfdisk --version | awk '{print $3}')
if [[ $sfdisk_version != "2.38" ]]; then
  exit 1
fi