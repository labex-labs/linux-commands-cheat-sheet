#!/bin/bash
if ! command -v ftpcount &> /dev/null
then
    echo "The ftpcount command could not be found. Please verify the installation."
    exit 1
fi
echo "ftpcount command found. Installation successful!"
exit 0