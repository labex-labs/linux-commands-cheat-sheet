#!/bin/bash
if sndconfig --version | grep -q "sndconfig version 1.4.1"; then
  exit 0
else
  exit 1
fi