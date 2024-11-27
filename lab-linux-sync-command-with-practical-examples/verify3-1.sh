#!/bin/bash
if ! grep -q "This is important data that needs to be preserved." ~/project/important_data.txt; then
  exit 1
else
  exit 0
fi