#!/bin/bash
if [[ "$(dirs -v)" == *"/home/labex/project"* ]]; then
  exit 0
else
  echo "The directory stack was not managed correctly."
  exit 1
fi