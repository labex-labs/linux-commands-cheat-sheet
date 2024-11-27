#!/bin/bash
if ! mtoolstest -m | grep "Formatting drive a: as FAT"; then
    echo "mtoolstest -m command failed to test mformat."
    exit 1
fi
if ! mtoolstest -r | grep "Reading from drive a:"; then
    echo "mtoolstest -r command failed to test mread."
    exit 1
fi
if ! mtoolstest -w | grep "Writing to drive a:"; then
    echo "mtoolstest -w command failed to test mwrite."
    exit 1
fi
if ! mtoolstest -l | grep "Listing contents of drive a:"; then
    echo "mtoolstest -l command failed to test mls."
    exit 1
fi
if ! mtoolstest -D | grep "Listing directory contents of drive a:"; then
    echo "mtoolstest -D command failed to test mdir."
    exit 1
fi
echo "All mtoolstest command tests passed."
exit 0