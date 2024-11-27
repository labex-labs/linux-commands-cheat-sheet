#!/bin/bash

# Check dpkg version
dpkg --version

# Install a package
sudo dpkg -i example-package.deb

# Remove a package
sudo dpkg -r example-package

# Purge a package
sudo dpkg -P example-package

# List installed packages
dpkg --list

# Get package information
dpkg --info example-package