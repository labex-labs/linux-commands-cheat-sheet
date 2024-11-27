#!/bin/bash
if [ ! -d ~/project/svn-repo ]; then
    echo "SVN repository directory does not exist."
    exit 1
fi
if [ ! -f ~/project/svn-repo/README.txt ]; then
    echo "SVN repository README.txt file does not exist."
    exit 1
fi
if ! svnadmin dump ~/project/svn-repo | grep -q "UUID"; then
    echo "SVN repository is not properly initialized."
    exit 1
fi
echo "SVN repository is successfully initialized."
exit 0