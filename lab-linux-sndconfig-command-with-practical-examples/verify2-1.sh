#!/bin/bash
if sudo sndconfig --test &> /dev/null; then
  exit 0
else
  exit 1
fi