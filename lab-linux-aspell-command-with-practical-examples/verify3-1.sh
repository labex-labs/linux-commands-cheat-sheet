#!/bin/bash
if ! grep -q "linux" ~/project/.aspell.en.pws
then
    echo "Custom dictionary not created or updated properly"
    exit 1
fi
if ! grep -q "personal ~/project/.aspell.en.pws" ~/project/.aspellrc
then
    echo "Custom preferences not set properly"
    exit 1
fi
echo "Custom dictionary and preferences set successfully"
exit 0