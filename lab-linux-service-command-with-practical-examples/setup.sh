#!/bin/bash

# Check if Apache2 service is running
if sudo service apache2 status | grep -q "Apache2 is running"; then
    echo "Apache2 service is already running."
else
    # Start Apache2 service
    sudo service apache2 start
    echo "Apache2 service started."
fi

# Check Apache2 service status
sudo service apache2 status

# Restart Apache2 service
sudo service apache2 restart
echo "Apache2 service restarted."

# Stop Apache2 service
sudo service apache2 stop
echo "Apache2 service stopped."

# List all available services
sudo service --status-all