#!/bin/bash
if grep -q "that need to be formatted." sample.txt; then
  exit 1
else
  exit 0
fi