#!/bin/bash
if ! zless --help | grep -q "Usage:"; then
    echo "The zless command options could not be displayed properly."
    exit 1
fi
if ! zless -n --help | grep -q "line-numbers"; then
    echo "The zless command line-numbers option could not be verified."
    exit 1
fi
if ! zless -p "test" --help 2>&1 | grep -q "pattern"; then
    echo "The zless command pattern option could not be verified."
    exit 1
fi
echo "The zless command options are working as expected."
exit 0