#!/bin/bash

# Create a directory for the cron script
mkdir -p ~/project/cron

# Write the cron script
cat << EOF > ~/project/cron/broadcast_message.sh
#!/bin/bash

sudo wall "This is a scheduled broadcast message."
EOF

# Make the script executable
chmod +x ~/project/cron/broadcast_message.sh

# Add the cron job to run the script every minute
(crontab -l ; echo "* * * * * ~/project/cron/broadcast_message.sh") | crontab -