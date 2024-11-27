#!/bin/bash
version=$(uuname --version | grep -o -E '[0-9]+\.[0-9]+\.[0-9]+')
if [[ "$version" == "4.15.2" ]]; then
  exit 0
else
  echo "Expected uuname version 4.15.2, but got $version"
  exit 1
fi