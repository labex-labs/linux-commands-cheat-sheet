# Monitor Log Files with swatch

In this step, you will learn how to use swatch to monitor specific log files and set up custom alerts.

First, let's create a sample log file that we can use for monitoring:

```bash
touch ~/project/sample.log
```

Now, let's update the swatch configuration file to monitor the sample log file:

```bash
nano ~/project/swatch.config
```

Add the following content to the file:

```
# swatch.config
watchfor /error/
actions = echo "Error found in sample.log: $_"
logfile = ~/project/sample.log
```

This configuration tells swatch to monitor the `~/project/sample.log` file and look for the word "error". When an error is detected, swatch will execute the `echo` command to print a message.

To start monitoring the log file, run the following command:

```bash
swatch --config-file ~/project/swatch.config --tail ~/project/sample.log
```

The `--tail` option tells swatch to continuously monitor the log file and watch for new entries.

Now, let's simulate an error in the log file:

```bash
echo "This is an error message" >> ~/project/sample.log
```

You should see the following output in the swatch terminal:

```
Error found in sample.log: This is an error message
```

Swatch has detected the "error" keyword in the log file and executed the configured action.

You can customize the swatch configuration to monitor different log files, watch for specific patterns, and perform various actions, such as sending email notifications, executing scripts, or forwarding log entries to other systems.
