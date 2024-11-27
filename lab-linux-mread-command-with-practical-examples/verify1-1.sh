#!/bin/bash
if mread -h &> /dev/null; then
  exit 0
else
  exit 1
fi