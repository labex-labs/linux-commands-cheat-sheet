#!/bin/bash
# Create some sample compressed files
touch system.log.gz application.log.gz
zless system.log.gz &> /dev/null
if [ $? -ne 0 ]; then
    echo "The zless command could not view the compressed system.log.gz file."
    exit 1
fi
zless -p "error" application.log.gz &> /dev/null
if [ $? -ne 0 ]; then
    echo "The zless command could not search for the 'error' pattern in the compressed application.log.gz file."
    exit 1
fi
zless /usr/share/man/man1/zless.1.gz &> /dev/null
if [ $? -ne 0 ]; then
    echo "The zless command could not view the compressed zless manual page."
    exit 1
fi
zless backup.tar.gz &> /dev/null
if [ $? -ne 0 ]; then
    echo "The zless command could not view the contents of the compressed backup.tar.gz file."
    exit 1
fi
echo "The zless command is working as expected in the practical examples."
exit 0