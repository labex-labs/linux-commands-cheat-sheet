#!/bin/bash
if ! finger -l labex | grep -q "Labex User"
then
    echo "The finger command with -l option did not display the correct user information."
    exit 1
fi
echo "The finger command with -l option displayed the user information successfully."
exit 0