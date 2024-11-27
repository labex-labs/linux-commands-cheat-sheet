#!/bin/bash

# Understand the ps Command
echo "# Understand the ps Command"
echo "Running basic ps command:"
ps
echo "Running ps -ef command:"
ps -ef
echo "Running ps -u labex command:"
ps -u labex

# Filter Processes by User
echo "# Filter Processes by User"
echo "Listing processes owned by labex user:"
ps -u labex