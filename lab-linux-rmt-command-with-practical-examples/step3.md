# Automating Backup with rmt in a Cron Job

In this final step, we will learn how to automate the backup process using the `rmt` command and a Cron job.

First, let's create a backup script that we can schedule with Cron:

```bash
nano ~/project/backup.sh
```

Add the following content to the script:

```bash
#!/bin/bash

# Set the remote host and backup directory
REMOTE_HOST="remote_host"
BACKUP_DIR="/path/to/backup"

# Backup the ~/project directory
sudo tar -czf - ~/project | rmt $REMOTE_HOST:$BACKUP_DIR/project_backup.tar.gz
```

Save and close the file.

Next, make the script executable:

```bash
chmod +x ~/project/backup.sh
```

Now, let's set up a Cron job to run the backup script daily at 2:00 AM:

```bash
sudo crontab -e
```

Add the following line to the crontab:

```
0 2 * * * /home/labex/project/backup.sh
```

This will run the `backup.sh` script every day at 2:00 AM.

To test the backup, you can manually run the script:

```bash
~/project/backup.sh
```

You should see the backup being created on the remote host.

That's it! You have now automated the backup process using the `rmt` command and a Cron job.
