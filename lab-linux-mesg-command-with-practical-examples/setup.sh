#!/bin/bash

# Check current message permission status
echo "Checking current message permission status..."
mesg

# Deny message receiving
echo "Denying message receiving..."
mesg n

# Verify permission change
echo "Verifying permission change..."
mesg

# Allow message receiving
echo "Allowing message receiving..."
mesg y

# Verify permission change
echo "Verifying permission change..."
mesg

# Check list of logged-in users
echo "Checking list of logged-in users..."
who

# Send message to a specific user
echo "Sending message to user 'labex'..."
write labex

# Send broadcast message to all logged-in users
echo "Sending broadcast message to all users..."
wall "This is a broadcast message to all users."