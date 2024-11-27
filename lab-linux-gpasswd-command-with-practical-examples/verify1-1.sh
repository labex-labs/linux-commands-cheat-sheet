#!/bin/bash
if ! gpasswd --help | grep -q "Usage: gpasswd \[options\] GROUP"; then
  exit 1
fi