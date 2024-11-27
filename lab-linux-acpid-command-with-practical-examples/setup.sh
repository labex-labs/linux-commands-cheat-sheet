#!/bin/bash

# Check if acpid is installed
if ! command -v acpid &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y acpid
fi

# Check acpid service status
if ! systemctl is-active --quiet acpid; then
    sudo systemctl enable acpid
    sudo systemctl start acpid
fi

# Create the ACPI events directory if it doesn't exist
if [ ! -d "/etc/acpi/events" ]; then
    sudo mkdir -p /etc/acpi/events
fi

# Copy the default and power-button event handlers
if [ ! -f "/etc/acpi/events/default" ]; then
    echo "event=button/power.*" | sudo tee /etc/acpi/events/default
    echo "action=/etc/acpi/power-button.sh" | sudo tee -a /etc/acpi/events/default
fi

if [ ! -f "/etc/acpi/events/power-button" ]; then
    echo "event=button/power.*" | sudo tee /etc/acpi/events/power-button
    echo "action=/etc/acpi/power-button.sh" | sudo tee -a /etc/acpi/events/power-button
fi

# Create the power-button.sh script
if [ ! -f "/etc/acpi/power-button.sh" ]; then
    echo "#!/bin/bash" | sudo tee /etc/acpi/power-button.sh
    echo "logger \"Power button pressed\"" | sudo tee -a /etc/acpi/power-button.sh
    sudo chmod +x /etc/acpi/power-button.sh
fi

# Create the project directory if it doesn't exist
if [ ! -d "~/project" ]; then
    mkdir -p ~/project
fi