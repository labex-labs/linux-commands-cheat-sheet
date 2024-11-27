# Introduction to Crontab

In this step, you will learn about the crontab command, which is used to schedule recurring tasks in Linux. The crontab command allows you to create, edit, and manage cron jobs, which are scripts or commands that run automatically at specified intervals.

First, let's check the current crontab entries for the `labex` user:

```bash
crontab -l
```

Example output:

```
No crontab for labex.
```

As you can see, there are currently no cron jobs scheduled for the `labex` user.

Next, let's create a new cron job that runs a simple script every minute. Create a new file called `hello.sh` in the `~/project` directory with the following content:

```bash
#!/bin/bash
echo "Hello from cron job!"
```

Make the script executable:

```bash
chmod +x ~/project/hello.sh
```

Now, let's add a new cron job to run this script every minute:

```bash
crontab -e
```

This will open the crontab editor. Add the following line at the end of the file:

```
* * * * * /home/labex/project/hello.sh
```

This cron job will run the `hello.sh` script every minute.

Save and exit the crontab editor.

To verify that the cron job is running, wait for a minute and check the system log:

```bash
tail -n 5 /var/log/syslog
```

You should see the "Hello from cron job!" message in the log.
