#!/bin/bash
output=$(ipcs)
if [[ $output =~ "Shared Memory Segments" ]] && [[ $output =~ "Semaphore Arrays" ]] && [[ $output =~ "Message Queues" ]]; then
  exit 0
else
  echo "The output of the 'ipcs' command does not contain the expected sections."
  exit 1
fi