#!/bin/bash
for i in {1..6}; do
    sudo chvt $i &> /dev/null
    if ! sudo chvt -l | grep -q "VT$i"; then
        echo "Failed to switch to virtual terminal $i"
        exit 1
    fi
done
echo "Virtual terminal switching verified successfully"
exit 0