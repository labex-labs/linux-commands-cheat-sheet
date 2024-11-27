# Configuring Cron Notifications and Logging

In this final step, we will configure cron to send email notifications for cron job output and enable detailed logging.

First, let's install the necessary package to enable email notifications:

```bash
sudo apt-get update
sudo apt-get install -y mailutils
```

Next, we need to configure the email settings for the `labex` user. Open the crontab editor:

```bash
crontab -e
```

Add the following line at the top of the file:

```
MAILTO=labex@example.com
```

This will send the output of any cron jobs to the specified email address.

Now, let's enable detailed logging for the cron service. Edit the cron configuration file:

```bash
sudo nano /etc/crontab
```

Locate the following line:

```
#EXTRA_OPTS=""
```

Uncomment it and change it to:

```
EXTRA_OPTS="-l 7"
```

This will set the log level to 7, which is the most detailed level. Save and exit the file.

Restart the cron service to apply the changes:

```bash
sudo systemctl restart cron
```

Now, any cron job output or errors will be logged in the `/var/log/cron.log` file, which you can view using the following command:

```bash
sudo tail -n 20 /var/log/cron.log
```
