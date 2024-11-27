#!/bin/bash
if [ "$(cat sample.txt | colrm 2 4)" != "1 3 5" ]; then
  exit 1
fi