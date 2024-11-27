#!/bin/bash
if which python | grep "/usr/bin/python3"; then
  exit 0
else
  exit 1
fi