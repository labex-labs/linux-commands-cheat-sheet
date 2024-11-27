#!/bin/bash
perl_version=$(perl --version | grep 'This is perl' | awk '{print $4}' | sed 's/,//')
if [[ $perl_version == "5.30.0" ]]; then
  exit 0
else
  echo "Perl version is not 5.30.0"
  exit 1
fi