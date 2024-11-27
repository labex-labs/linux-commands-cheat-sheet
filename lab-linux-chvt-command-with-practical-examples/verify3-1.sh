#!/bin/bash
if [ ! -f ~/project/switch_vt.sh ]; then
    echo "Virtual terminal switching script not found"
    exit 1
fi
if ! chmod +x ~/project/switch_vt.sh; then
    echo "Failed to make the script executable"
    exit 1
fi
if ! ~/project/switch_vt.sh &> /dev/null; then
    echo "Virtual terminal switching script failed to run"
    exit 1
fi
for i in {1..6}; do
    if ! sudo chvt -l | grep -q "VT$i"; then
        echo "Virtual terminal $i not found in the list"
        exit 1
    fi
done
echo "Virtual terminal switching automation verified successfully"
exit 0