#!/bin/bash
if ! sudo getty --help | grep -q "Usage: getty"; then
  exit 1
fi