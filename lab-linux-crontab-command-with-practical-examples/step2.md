# Schedule a Recurring Task with Crontab

In this step, you will learn how to schedule a recurring task using the crontab command.

First, let's create a new script called `backup.sh` in the `~/project` directory that will perform a simple backup operation:

```bash
#!/bin/bash
echo "Backing up data to backup.txt"
date >> ~/project/backup.txt
```

Make the script executable:

```bash
chmod +x ~/project/backup.sh
```

Now, let's schedule this script to run every 5 minutes using crontab:

```bash
crontab -e
```

Add the following line to the crontab editor:

```
*/5 * * * * /home/labex/project/backup.sh
```

This cron job will run the `backup.sh` script every 5 minutes.

Save and exit the crontab editor.

To verify that the cron job is running, wait for 5 minutes and check the `backup.txt` file:

```bash
cat ~/project/backup.txt
```

You should see the current date and time added to the file every 5 minutes.
