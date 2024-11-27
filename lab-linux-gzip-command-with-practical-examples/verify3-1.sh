#!/bin/bash
if [ -f ~/project/documents.gz ]; then
  exit 0
else
  exit 1
fi