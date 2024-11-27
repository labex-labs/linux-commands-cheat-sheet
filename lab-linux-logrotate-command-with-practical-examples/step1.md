# Introduction to Logrotate Command

In this step, you will learn about the logrotate command in Linux. Logrotate is a utility that helps manage log files by automatically rotating, compressing, and deleting old log files. This is important for maintaining the health and performance of your system, as log files can quickly consume a large amount of disk space if not properly managed.

First, let's check the version of logrotate installed on your system:

```bash
sudo logrotate --version
```

Example output:

```
logrotate 3.18.1
```

Next, let's explore the basic usage of the logrotate command. The logrotate command reads the configuration file `/etc/logrotate.conf` and any configuration files found in the `/etc/logrotate.d/` directory to determine how to rotate log files.

To see the default configuration, you can run:

```bash
sudo cat /etc/logrotate.conf
```

This will show you the default settings for log rotation, such as the frequency of rotation, the number of old log files to keep, and the compression method used.

You can also manually rotate log files using the logrotate command. For example, to rotate the Apache access log, you can run:

```bash
sudo logrotate /etc/logrotate.d/apache2
```

This will immediately rotate the Apache access log file, regardless of the configured schedule.
