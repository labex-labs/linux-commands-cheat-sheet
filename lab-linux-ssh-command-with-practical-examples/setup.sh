#!/bin/bash

# Check SSH server status
sudo systemctl status ssh

# Connect to the remote server using SSH
ssh labex@localhost

# Connect to the remote server and execute a command
ssh labex@localhost ls -l

# Connect to the remote server and open an interactive shell
ssh -t labex@localhost bash

# Connect to the remote server using a specific SSH port (default is 22)
ssh -p 2222 labex@localhost