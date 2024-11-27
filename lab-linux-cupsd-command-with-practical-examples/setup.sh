#!/bin/bash

# Check CUPS service status
echo "Checking CUPS service status..."
if ! sudo systemctl status cups &> /dev/null; then
    echo "CUPS service is not running. Starting CUPS service..."
    sudo service cups start
fi

# Open CUPS web interface
echo "Opening CUPS web interface at http://localhost:631..."
xdg-open http://localhost:631

# List available printers
echo "Listing available printers..."
sudo cupsd -t

# Add a new printer named "MyPrinter"
echo "Adding a new printer named 'MyPrinter'..."
sudo lpadmin -p MyPrinter -E -v socket://localhost -m everywhere

echo "Environment setup complete."