#!/bin/bash
if ! finger -p labex | grep -q "Labex User"
then
    echo "The finger command with -p option did not display the correct user information."
    exit 1
fi
echo "The finger command with -p option displayed the user information successfully."
exit 0