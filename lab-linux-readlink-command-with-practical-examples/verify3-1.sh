#!/bin/bash
if [ "$(readlink ls_link)" == "/bin/ls" ]; then
  if [ "$(readlink nested_link)" == "ls_link" ]; then
    if [ "$(readlink -f nested_link)" == "/bin/ls" ]; then
      exit 0
    else
      echo "The readlink command with the -f option did not resolve the nested symbolic link correctly."
      exit 1
    fi
  else
    echo "The readlink command did not resolve the nested_link symbolic link correctly."
    exit 1
  fi
else
  echo "The readlink command did not resolve the ls_link symbolic link correctly."
  exit 1
fi