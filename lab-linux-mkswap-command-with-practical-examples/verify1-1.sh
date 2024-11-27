#!/bin/bash
if [ -z "$(sudo swapon --show)" ]; then
  exit 1
else
  exit 0
fi