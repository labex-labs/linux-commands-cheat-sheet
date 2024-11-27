#!/bin/bash
uuname_output=$(uuname -a | awk '{print $1, $3}')
if [[ "$uuname_output" == "ubuntu 22.04" ]]; then
  exit 0
else
  echo "Expected output 'ubuntu 22.04', but got: $uuname_output"
  exit 1
fi