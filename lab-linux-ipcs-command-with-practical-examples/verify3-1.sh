#!/bin/bash
output=$(ipcs -a)
if [[ $output =~ "Shared Memory Segments" ]] && [[ $output =~ "Semaphore Arrays" ]] && [[ $output =~ "Message Queues" ]]; then
  exit 0
else
  echo "The output of the 'ipcs -a' command does not contain the expected sections."
  exit 1
fi