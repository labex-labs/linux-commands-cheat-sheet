#!/bin/bash
uptime_p=$(uptime -p)
uptime_q=$(uptime -q)
uptime_s=$(uptime -s)
uptime_h=$(uptime -h)

if [[ "$uptime_p" =~ "up" ]] && [[ "$uptime_q" =~ " " ]] && [[ "$uptime_s" =~ "-" ]] && [[ "$uptime_h" =~ "users" ]]; then
  exit 0
else
  echo "The uptime command options did not produce the expected output."
  exit 1
fi