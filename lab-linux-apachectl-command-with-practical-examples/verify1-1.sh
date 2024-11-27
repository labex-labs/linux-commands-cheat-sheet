#!/bin/bash
version=$(sudo apachectl -v | grep "Server version" | awk '{print $3}')
if [[ "$version" == "Apache/2.4.52" ]]; then
  exit 0
else
  echo "Expected Apache version 2.4.52, but found $version"
  exit 1
fi