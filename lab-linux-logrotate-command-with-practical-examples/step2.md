# Configure Logrotate for Apache Web Server Logs

In this step, you will learn how to configure logrotate to manage the Apache web server logs.

First, let's install the Apache web server:

```bash
sudo apt-get update
sudo apt-get install -y apache2
```

Once the installation is complete, you can check the default Apache log files:

```bash
ls -l /var/log/apache2/
```

Example output:

```
-rw-r--r-- 1 root root   0 Apr 26 12:00 access.log
-rw-r--r-- 1 root root   0 Apr 26 12:00 error.log
```

Now, let's create a custom logrotate configuration file for the Apache logs:

```bash
sudo nano /etc/logrotate.d/apache2
```

Add the following configuration:

```
/var/log/apache2/*.log {
    daily
    missingok
    rotate 7
    compress
    delaycompress
    notifempty
    create 640 root adm
    sharedscripts
    postrotate
        if /etc/init.d/apache2 status > /dev/null; then
            /etc/init.d/apache2 reload > /dev/null
        fi
    endscript
}
```

This configuration will:

- Rotate the Apache access and error logs daily
- Keep 7 days of log files
- Compress the rotated log files
- Create new log files with the specified permissions
- Reload the Apache service after rotation to ensure the new log files are used

To test the configuration, you can manually rotate the logs:

```bash
sudo logrotate /etc/logrotate.d/apache2
```

Check the log directory again to see the rotated files:

```bash
ls -l /var/log/apache2/
```

Example output:

```
-rw-r--r-- 1 root root   0 Apr 26 12:00 access.log
-rw-r--r-- 1 root root   0 Apr 26 12:00 error.log
-rw-r--r-- 1 root root   0 Apr 26 12:01 access.log.1.gz
-rw-r--r-- 1 root root   0 Apr 26 12:01 error.log.1.gz
```
