#!/bin/bash

# Check lpd service status
sudo systemctl status lpd

# Create a new print queue
sudo lpadmin -p myprinter -v file:/dev/null -P /usr/share/ppd/cups-pdf.ppd -E

# Enable the new print queue
sudo enable-printer myprinter

# List available print queues
sudo lpstat -a

# View the status of the print queue
sudo lpstat -t