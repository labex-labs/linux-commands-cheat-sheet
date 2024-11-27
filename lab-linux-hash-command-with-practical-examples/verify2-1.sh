#!/bin/bash
expected_hash="5d10c2c4d3dc5711938f617416b2b523c4d4f3ecd85a13d7c0c6f88a45b6ebc"
actual_hash=$(hash -t sha256 sample.txt)
if [[ "$actual_hash" != "$expected_hash" ]]; then
  exit 1
fi