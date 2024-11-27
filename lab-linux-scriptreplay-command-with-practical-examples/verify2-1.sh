#!/bin/bash
if [ ! -f ~/project/recording.log ]; then
    echo "The recording.log file does not exist."
    exit 1
fi
echo "The recording.log file exists."
exit 0