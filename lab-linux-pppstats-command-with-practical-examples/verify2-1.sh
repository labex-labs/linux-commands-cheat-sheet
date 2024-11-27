#!/bin/bash
if ! sudo pon &> /dev/null; then
    echo "Failed to start PPP connection."
    exit 1
fi
if ! pppstats -r -i ppp0 -t 2 | grep -q "bytes_in"; then
    echo "pppstats output does not contain the expected fields."
    sudo poff &> /dev/null
    exit 1
fi
sudo poff &> /dev/null
echo "pppstats monitoring is working as expected."
exit 0