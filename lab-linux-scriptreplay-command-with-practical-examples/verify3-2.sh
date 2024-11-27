#!/bin/bash
if ! scriptreplay ~/project/recording.log | grep -q "This is a test command"; then
    echo "The recorded session could not be replayed successfully."
    exit 1
fi
echo "The recorded session was replayed successfully."
exit 0