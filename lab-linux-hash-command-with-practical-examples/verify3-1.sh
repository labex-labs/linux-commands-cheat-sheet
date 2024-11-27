#!/bin/bash
expected_checksums="sample_checksums.txt"
if ! hash -c "$expected_checksums"; then
  exit 1
fi