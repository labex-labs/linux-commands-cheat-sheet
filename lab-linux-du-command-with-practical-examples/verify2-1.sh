#!/bin/bash
if ! du -hs ~/project/test_dir | grep -q "12K"; then
  exit 1
fi