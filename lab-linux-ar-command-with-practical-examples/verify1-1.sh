#!/bin/bash
if ! sudo ar --help | grep -q "Usage: ar"; then
  exit 1
fi