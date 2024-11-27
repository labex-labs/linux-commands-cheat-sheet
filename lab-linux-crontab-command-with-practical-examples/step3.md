# Manage Crontab Entries

In this step, you will learn how to manage your crontab entries, including listing, editing, and removing cron jobs.

First, let's list all the current crontab entries for the `labex` user:

```bash
crontab -l
```

You should see the two cron jobs you created in the previous steps:

```
* * * * * /home/labex/project/hello.sh
*/5 * * * * /home/labex/project/backup.sh
```

To edit the crontab, use the following command:

```bash
crontab -e
```

This will open the crontab editor, where you can add, modify, or remove cron job entries.

Let's try to remove the `hello.sh` cron job. In the crontab editor, locate the line `* * * * * /home/labex/project/hello.sh` and delete it. Save and exit the editor.

To verify that the `hello.sh` cron job has been removed, run the following command again:

```bash
crontab -l
```

You should only see the `backup.sh` cron job remaining.

Now, let's disable the `backup.sh` cron job by adding a `#` at the beginning of the line:

```bash
crontab -e
```

Add a `#` at the beginning of the line `*/5 * * * * /home/labex/project/backup.sh`. Save and exit the editor.

To verify that the `backup.sh` cron job has been disabled, run the following command:

```bash
crontab -l
```

You should see the line for `backup.sh` with a `#` at the beginning, indicating that it is now disabled.
