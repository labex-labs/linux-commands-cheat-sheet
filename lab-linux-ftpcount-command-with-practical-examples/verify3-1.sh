#!/bin/bash
active_sessions=$(ftpcount | grep -o -E '[0-9]+ FTP session' | cut -d' ' -f1)
if [ "$active_sessions" -ne "2" ]; then
    echo "Expected 2 active FTP sessions, but found $active_sessions."
    exit 1
fi
if ! ftpcount | grep -q 'User: labex'; then
    echo "Could not find 'User: labex' in the ftpcount output."
    exit 1
fi
if ! ftpcount | grep -q 'Remote host: 172.17.0.1'; then
    echo "Could not find 'Remote host: 172.17.0.1' in the ftpcount output."
    exit 1
fi
echo "Verified ftpcount session details."
exit 0