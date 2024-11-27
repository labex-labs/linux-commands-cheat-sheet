#!/bin/bash
if ! history | grep -q "talk labex2"; then
  exit 1
fi