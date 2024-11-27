#!/bin/bash

# Check the real-time priority of the current shell process
chrt -p $$

# Set the real-time FIFO scheduling policy with a priority of 10 for the current shell process
sudo chrt -f -p 10 $$