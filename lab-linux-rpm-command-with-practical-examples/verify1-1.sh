#!/bin/bash
if ! sudo rpm --help | grep -q "Usage: rpm"; then
  exit 1
fi