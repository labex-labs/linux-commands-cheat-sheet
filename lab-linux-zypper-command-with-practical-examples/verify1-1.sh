#!/bin/bash
zypper_version=$(sudo zypper --version | awk '{print $2}')
if [[ "$zypper_version" != "1.14.57" ]]; then
  exit 1
fi