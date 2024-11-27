#!/bin/bash
if grep -q 'testgroup' /etc/group; then
  exit 1
else
  exit 0
fi