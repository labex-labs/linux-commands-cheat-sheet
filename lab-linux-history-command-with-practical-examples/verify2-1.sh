#!/bin/bash
if [ "$(export | grep HISTSIZE)" != "" ] && [ "$(export | grep HISTFILESIZE)" != "" ] && [ "$(export | grep HISTCONTROL)" != "" ] && [ "$(export | grep HISTTIMEFORMAT)" != "" ]; then
  exit 0
else
  echo "The history command options are not set as expected."
  exit 1
fi