#!/bin/bash
uuname_output=$(uuname -a)
if [[ "$uuname_output" == *"ubuntu"* ]] && [[ "$uuname_output" == *"22.04"* ]] && [[ "$uuname_output" == *"x86_64"* ]]; then
  exit 0
else
  echo "Expected output to contain 'ubuntu', '22.04', and 'x86_64', but got: $uuname_output"
  exit 1
fi