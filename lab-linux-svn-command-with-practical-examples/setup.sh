#!/bin/bash

# Install Subversion (SVN) on Ubuntu 22.04
if ! command -v svn &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y subversion
fi

# Initialize a Local SVN Repository
mkdir -p ~/project/svn-repo
svnadmin create ~/project/svn-repo