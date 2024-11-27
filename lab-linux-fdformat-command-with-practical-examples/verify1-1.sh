#!/bin/bash
if ! fdformat --help | grep -q "Usage: fdformat"; then
  exit 1
fi