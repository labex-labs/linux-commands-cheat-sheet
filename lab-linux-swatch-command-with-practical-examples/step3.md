# Configure swatch for Specific Alerts

In this step, you will learn how to configure swatch to monitor specific log entries and set up custom alerts.

Let's start by creating a new configuration file for swatch:

```bash
nano ~/project/swatch_alerts.config
```

Add the following content to the file:

```
# swatch_alerts.config
watchfor /failed login/
actions = exec /home/labex/project/alert_script.sh
logfile = /var/log/auth.log

watchfor /CRON/
actions = exec /home/labex/project/cron_alert.sh
logfile = /var/log/syslog
```

In this configuration:

- The first rule watches for the phrase "failed login" in the `/var/log/auth.log` file and executes the `alert_script.sh` script when a match is found.
- The second rule watches for the word "CRON" in the `/var/log/syslog` file and executes the `cron_alert.sh` script when a match is found.

Now, let's create the alert scripts:

```bash
nano ~/project/alert_script.sh
```

Add the following content to the file:

```bash
#!/bin/bash
echo "Security alert: Failed login attempt detected!" | mail -s "Security Alert" admin@example.com
```

This script sends an email to the `admin@example.com` address when a failed login attempt is detected.

```bash
nano ~/project/cron_alert.sh
```

Add the following content to the file:

```bash
#!/bin/bash
echo "Cron alert: Cron job executed" | mail -s "Cron Alert" admin@example.com
```

This script sends an email to the `admin@example.com` address when a cron job is executed.

Make the scripts executable:

```bash
chmod +x ~/project/alert_script.sh ~/project/cron_alert.sh
```

Now, start swatch to monitor the log files and trigger the configured alerts:

```bash
swatch --config-file ~/project/swatch_alerts.config --tail /var/log/auth.log /var/log/syslog
```

The `--tail` option tells swatch to continuously monitor the log files and watch for new entries.

To test the alerts, you can simulate a failed login attempt or trigger a cron job. Swatch will detect the events and execute the corresponding alert scripts.
