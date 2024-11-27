#!/bin/bash

# Check logrotate version
sudo logrotate --version

# Explore logrotate configuration
sudo cat /etc/logrotate.conf

# Install Apache web server
sudo apt-get update
sudo apt-get install -y apache2

# Create custom logrotate configuration for Apache logs
sudo tee /etc/logrotate.d/apache2 << EOF
/var/log/apache2/*.log {
  rotate 7
  daily
  missingok
  notifempty
  delaycompress
  compress
  postrotate
    /etc/init.d/apache2 reload > /dev/null
  endscript
}
EOF

# Manually rotate Apache logs
sudo logrotate /etc/logrotate.d/apache2