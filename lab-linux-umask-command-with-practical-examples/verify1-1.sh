#!/bin/bash
if [ "$(umask)" == "0022" ]; then
  exit 0
else
  echo "The current umask value is not 0022"
  exit 1
fi