#!/bin/bash
if [ -f configure ]; then
  echo "The configure script has been generated successfully."
  exit 0
else
  echo "The configure script was not generated."
  exit 1
fi