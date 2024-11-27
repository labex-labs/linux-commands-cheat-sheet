#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Create the cron_job.sh file
cat << EOF > ~/project/cron_job.sh
#!/bin/bash
echo "Cron job ran at $(date)" >> ~/project/cron_output.log
EOF

# Set the execute permission for the cron_job.sh file
chmod +x ~/project/cron_job.sh

# Add the cron job to the labex user's crontab
(crontab -l; echo "* * * * * ~/project/cron_job.sh") | crontab -