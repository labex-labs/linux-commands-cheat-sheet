#!/bin/bash

# Check if CVS is already installed
if ! command -v cvs &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y cvs
fi

# Create CVS repository directory
if [ ! -d "/home/labex/project/cvsrepo" ]; then
    mkdir -p /home/labex/project/cvsrepo
    chmod -R 755 /home/labex/project/cvsrepo
    chown -R labex:labex /home/labex/project/cvsrepo
fi

# Create a new CVS repository
cd /home/labex/project/cvsrepo
cvs -d /home/labex/project/cvsrepo init

# Check out a project
cd /home/labex/project
cvs -d /home/labex/project/cvsrepo checkout myproject