#!/bin/bash
if ! du -h . | grep -q "4.0K"; then
  exit 1
fi