#!/bin/bash
if ! command -v svn &> /dev/null
then
    echo "Subversion is not installed."
    exit 1
fi
if [[ "$(svn --version | head -n 1)" != "svn, version 1.14.1 (r1943681)" ]]; then
    echo "Subversion version is not correct."
    exit 1
fi
echo "Subversion is installed and the version is correct."
exit 0