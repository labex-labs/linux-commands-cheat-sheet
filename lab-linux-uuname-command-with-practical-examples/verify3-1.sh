#!/bin/bash
uuname_output=$(uuname -a | grep "Ubuntu 22.04")
if [[ -n "$uuname_output" ]]; then
  exit 0
else
  echo "Expected output to contain 'Ubuntu 22.04', but got: $(uuname -a)"
  exit 1
fi