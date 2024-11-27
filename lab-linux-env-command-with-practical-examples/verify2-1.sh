#!/bin/bash
if [ "$(env MY_VAR="Goodbye, World!" echo $MY_VAR)" != "Goodbye, World!" ]; then
  exit 1
fi