#!/bin/bash
WEB_SERVER_PID=$(pgrep -n apache2)
WEB_SERVER_NI=$(ps -o ni= -p $WEB_SERVER_PID)
if [ "$WEB_SERVER_NI" -eq "-5" ]; then
  exit 0
else
  echo "The nice value of the web server process is not -5."
  exit 1
fi