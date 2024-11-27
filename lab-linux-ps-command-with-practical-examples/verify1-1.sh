#!/bin/bash
ps -ef | grep -q labex
if [ $? -ne 0 ]; then
  exit 1
fi