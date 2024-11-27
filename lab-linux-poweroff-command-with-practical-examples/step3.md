# Automate System Shutdown with Cron and the poweroff Command

In this step, you will learn how to automate the system shutdown process using the `poweroff` command and the Cron job scheduler.

Cron is a time-based job scheduler in Unix-like operating systems. It allows you to schedule commands or scripts to run at specific intervals or times.

Let's create a Cron job to automatically shut down the system at a specific time:

```bash
sudo crontab -e
```

Add the following line to the crontab file:

```
0 22 * * * /usr/bin/sudo /sbin/poweroff
```

This Cron job will execute the `poweroff` command every day at 10:00 PM (22:00).

After saving the crontab file, the system will now be automatically shut down at 10:00 PM every day.
