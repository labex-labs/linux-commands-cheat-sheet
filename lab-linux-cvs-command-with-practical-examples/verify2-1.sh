#!/bin/bash
if [ ! -d "/tmp/cvsrepo" ]; then
    echo "CVS repository not created. Please create the repository first."
    exit 1
else
    echo "CVS repository created successfully."
    exit 0
fi