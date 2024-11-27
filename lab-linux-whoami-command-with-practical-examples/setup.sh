#!/bin/bash

# Create a directory for the lab
mkdir -p ~/project/user-management

# Change to the lab directory
cd ~/project/user-management

# Create a script to check the current user
cat << EOF > check_user.sh
#!/bin/bash
echo "The current user is: $(whoami)"
EOF

# Make the script executable
chmod +x check_user.sh

# Run the script
./check_user.sh