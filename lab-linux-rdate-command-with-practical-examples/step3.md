# Automate Time Synchronization with Cron

In this step, you will learn how to automate the time synchronization process using the Cron scheduler.

Cron is a time-based job scheduler in Unix-like operating systems that allows you to run scripts or commands at specific intervals. By setting up a Cron job to regularly synchronize the system time, you can ensure that your system's clock is always accurate and up-to-date.

First, let's create a script that will synchronize the time using the `rdate` command:

```
sudo nano ~/project/sync_time.sh
```

Add the following content to the script:

```bash
#!/bin/bash
sudo rdate -s time.nist.gov
```

Save and exit the file.

Next, make the script executable:

```
chmod +x ~/project/sync_time.sh
```

Now, let's set up a Cron job to run the script every hour:

```
sudo crontab -e
```

Add the following line to the crontab:

```
0 * * * * /home/labex/project/sync_time.sh
```

This will run the `sync_time.sh` script every hour on the hour (0 minutes past the hour).

To verify that the Cron job is running, you can check the system logs:

```
sudo tail -n 10 /var/log/syslog
```

Look for entries related to the `rdate` command, which should indicate that the time synchronization is happening as scheduled.
