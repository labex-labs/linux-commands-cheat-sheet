#!/bin/bash

# Display the rpm command help
sudo rpm --help

# Install a sample RPM package
sudo rpm -i https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

# Upgrade an installed RPM package
sudo rpm -U https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

# Remove an installed RPM package
sudo rpm -e epel-release

# Query information about an installed package
sudo rpm -q epel-release

# Verify the integrity of an installed package
sudo rpm -V epel-release

# Query the package database for installed packages
sudo rpm -qa