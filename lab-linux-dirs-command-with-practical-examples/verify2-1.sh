#!/bin/bash
if [[ "$(dirs -v)" == *"/etc"* ]] && [[ "$(dirs -v)" == *"/var/log"* ]] && [[ "$(dirs -v)" == *"/tmp"* ]] && [[ "$(dirs -v)" == *"/home/labex/project"* ]]; then
  exit 0
else
  echo "The dirs command did not display the expected directory stack."
  exit 1
fi