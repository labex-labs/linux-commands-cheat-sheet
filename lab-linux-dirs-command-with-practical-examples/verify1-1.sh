#!/bin/bash
if [[ "$(dirs)" == *"/home/labex/project"* ]]; then
  exit 0
else
  echo "The dirs command did not display the expected output."
  exit 1
fi