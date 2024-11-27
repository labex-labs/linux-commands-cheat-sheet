#!/bin/bash

# Create project directory
mkdir -p ~/project

# Create hello.sh script
cat << EOF > ~/project/hello.sh
#!/bin/bash
echo "Hello from cron job!"
EOF

# Make hello.sh executable
chmod +x ~/project/hello.sh

# Add cron job to run hello.sh every minute
(crontab -l; echo "* * * * * /home/labex/project/hello.sh") | crontab -

# Create backup.sh script
cat << EOF > ~/project/backup.sh
#!/bin/bash
echo "Backing up data to backup.txt"
date >> ~/project/backup.txt
EOF

# Make backup.sh executable
chmod +x ~/project/backup.sh

# Add cron job to run backup.sh every 5 minutes
(crontab -l; echo "*/5 * * * * /home/labex/project/backup.sh") | crontab -