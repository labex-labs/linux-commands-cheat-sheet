# Customize Logrotate Configuration for Specific Log Files

In this step, you will learn how to customize the logrotate configuration for specific log files on your system.

Let's create a custom log file and configure logrotate to manage it.

First, create a sample log file:

```bash
sudo touch /var/log/custom.log
sudo chmod 644 /var/log/custom.log
```

Now, create a new logrotate configuration file for the custom log:

```bash
sudo nano /etc/logrotate.d/custom-logs
```

Add the following configuration:

```
/var/log/custom.log {
    weekly
    rotate 4
    compress
    delaycompress
    notifempty
    create 644 root adm
}
```

This configuration will:

- Rotate the `custom.log` file weekly
- Keep 4 weeks of log files
- Compress the rotated log files
- Create new log files with the specified permissions

To test the configuration, you can manually rotate the logs:

```bash
sudo logrotate /etc/logrotate.d/custom-logs
```

Check the log directory to see the rotated files:

```bash
ls -l /var/log/
```

Example output:

```
-rw-r--r-- 1 root adm     0 Apr 26 12:00 custom.log
-rw-r--r-- 1 root adm     0 Apr 19 12:00 custom.log.1.gz
-rw-r--r-- 1 root adm     0 Apr 12 12:00 custom.log.2.gz
-rw-r--r-- 1 root adm     0 Apr  5 12:00 custom.log.3.gz
-rw-r--r-- 1 root adm     0 Mar 29 12:00 custom.log.4.gz
```

You can also customize the logrotate configuration for other log files on your system, such as application-specific logs or system logs, by creating additional configuration files in the `/etc/logrotate.d/` directory.
