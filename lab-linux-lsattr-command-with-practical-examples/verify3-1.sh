#!/bin/bash
if ! sudo lsattr file4.txt | grep -q '----i---------e-----------'; then
  exit 1
fi
if ! sudo lsattr file5.txt file6.txt | grep -q '-a--------------e-----------'; then
  exit 1
fi