#!/bin/bash
version=$(modinfo --version)
if [[ $version == *"2.6.32-504.16.2.el6"* ]]; then
  exit 0
else
  echo "The modinfo command version is not as expected."
  exit 1
fi