#!/bin/bash
if ! finger | grep -q "labex"
then
    echo "The finger command did not display information for the labex user."
    exit 1
fi
echo "The finger command successfully displayed user information."
exit 0