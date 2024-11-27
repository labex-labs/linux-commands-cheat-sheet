#!/bin/bash
version=$(badblocks --version | awk '{print $2}')
if [[ "$version" != "1.46.2" ]]; then
  exit 1
fi