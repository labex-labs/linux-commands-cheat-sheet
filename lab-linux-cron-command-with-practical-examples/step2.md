# Scheduling a Simple Cron Job

In this step, we will create a simple cron job that runs a script every minute.

First, let's create a sample script that we will schedule with cron:

```bash
nano ~/project/cron_job.sh
```

Add the following content to the file:

```bash
#!/bin/bash
echo "Cron job ran at $(date)" >> ~/project/cron_output.log
```

Save and exit the file.

Now, let's add the cron job to the `labex` user's crontab:

```bash
crontab -e
```

Add the following line to the crontab:

```
* * * * * /home/labex/project/cron_job.sh
```

This will run the `cron_job.sh` script every minute.

Save and exit the crontab editor.

To verify that the cron job is running, wait a minute and check the `cron_output.log` file:

```bash
cat ~/project/cron_output.log
```

You should see the output showing the current date and time when the cron job ran.
