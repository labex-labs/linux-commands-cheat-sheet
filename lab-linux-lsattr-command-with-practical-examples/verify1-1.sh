#!/bin/bash
if ! lsattr file.txt | grep -q '--------------e-----------'; then
  exit 1
fi