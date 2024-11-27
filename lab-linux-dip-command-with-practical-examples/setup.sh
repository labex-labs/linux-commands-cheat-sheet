#!/bin/bash

# Check dip version
dip --version

# Create dialup.dip configuration file
mkdir -p ~/project
cat << EOF > ~/project/dialup.dip
ACCOUNT=myaccount
PHONE=555-1234
USER=myusername
PASSWORD=mypassword
EOF

# Establish dial-up connection
dip init ~/project/dialup.dip
dip connect