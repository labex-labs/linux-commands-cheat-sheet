#!/bin/bash

# Check badblocks version
badblocks --version

# Perform non-destructive read-only scan on /dev/sdb
sudo badblocks -v /dev/sdb