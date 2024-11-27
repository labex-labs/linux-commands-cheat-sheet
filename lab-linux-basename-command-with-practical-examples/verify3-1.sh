#!/bin/bash
if [ "$(ls files/docs | xargs basename)" == "document.new.txt" ]; then
  exit 0
else
  echo "The basename command was not used correctly with other commands."
  exit 1
fi