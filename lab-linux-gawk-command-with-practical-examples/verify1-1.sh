#!/bin/bash
gawk_version=$(gawk --version | grep -o -E '[0-9]+\.[0-9]+\.[0-9]+')
if [[ "$gawk_version" != "5.1.0" ]]; then
  exit 1
fi