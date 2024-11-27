#!/bin/bash
if ! sudo mdeltree --help | grep -q "Usage:"; then
  exit 1
fi