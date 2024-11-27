#!/bin/bash
if ! grep -q "This is a test command" ~/project/recording.log; then
    echo "The recording.log file does not contain the expected content."
    exit 1
fi
echo "The recording.log file contains the expected content."
exit 0