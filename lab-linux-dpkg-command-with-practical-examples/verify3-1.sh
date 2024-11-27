#!/bin/bash
sudo dpkg -i example-package-with-deps.deb
if [ $? -eq 0 ]; then
    echo "Package installation succeeded unexpectedly"
    exit 1
fi

sudo dpkg --configure -a
sudo apt-get -f install -y
dpkg --audit | grep -q "broken"
if [ $? -eq 0 ]; then
    echo "Unresolved package installation issues"
    exit 1
else
    exit 0
fi