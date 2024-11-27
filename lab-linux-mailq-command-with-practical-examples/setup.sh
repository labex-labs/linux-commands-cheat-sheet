#!/bin/bash

# Check if mailq command is installed
if ! command -v mailq &> /dev/null
then
    echo "Installing mailq command..."
    sudo apt-get update
    sudo apt-get install -y bsd-mailx
fi

# Create test emails in the mail queue
echo "This is a test email." | sudo sendmail -f labex@example.com user@example.com
echo "Another test email." | sudo sendmail -f labex@example.com user2@example.com