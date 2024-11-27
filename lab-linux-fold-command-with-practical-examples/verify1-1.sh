#!/bin/bash
if ! fold --help | grep -q "Usage: fold"; then
  exit 1
fi