#!/bin/bash
if [ -f fruits.csv ]; then
  exit 0
else
  exit 1
fi