#!/bin/bash
if ! sudo service --help | grep -q "Usage: service"; then
  exit 1
fi