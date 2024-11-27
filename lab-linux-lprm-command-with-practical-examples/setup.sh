#!/bin/bash

# Check if print queue is empty
sudo lpq

# Remove specific print job
sudo lprm 2

# Verify print queue is empty
sudo lpq