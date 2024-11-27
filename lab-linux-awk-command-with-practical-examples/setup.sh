#!/bin/bash

# Create the data.txt file
cat << EOF > data.txt
John,25,Sales
Jane,30,Marketing
Bob,35,IT
EOF

# Create the log.txt file
cat << EOF > log.txt
2023-04-01 10:30:00 INFO: This is a log message.
2023-04-02 11:45:00 ERROR: An error occurred.
2023-04-03 14:20:00 INFO: Another log message.
2023-04-04 16:10:00 WARN: A warning message.
EOF