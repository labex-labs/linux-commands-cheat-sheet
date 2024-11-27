#!/bin/bash
active_sessions=$(ftpcount | grep -o -E '[0-9]+ FTP session' | cut -d' ' -f1)
if [ "$active_sessions" -ne "1" ]; then
    echo "Expected 1 active FTP session, but found $active_sessions."
    exit 1
fi
echo "Verified 1 active FTP session."
exit 0