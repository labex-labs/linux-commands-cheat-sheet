#!/bin/bash
if curl --version | grep -q "curl 7.81.0"; then
  exit 0
else
  exit 1
fi