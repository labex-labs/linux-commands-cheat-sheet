# Explore journalctl Filtering Options

In this step, we will explore the various filtering options available with the `journalctl` command. Filtering allows you to narrow down the log entries and focus on specific information that is relevant to your troubleshooting or monitoring needs.

Let's start by filtering the logs based on the log level. To view only the error and critical log entries, you can use the `-p` (priority) option:

```bash
sudo journalctl -p err..crit
```

This will display only the log entries with a priority level of "error" or higher (critical).

Example output:

```
Apr 25 10:00:00 labex systemd[1]: Failed to start Login Service.
Apr 25 10:00:01 labex sshd[123]: error: Could not load host key: /etc/ssh/ssh_host_rsa_key
```

Next, you can filter the logs based on a specific service or system unit. For example, to view the logs for the SSH daemon, you can use the `-u` (unit) option:

```bash
sudo journalctl -u sshd.service
```

This will display all the log entries related to the SSH daemon.

You can also filter the logs based on a specific time range. To view the logs for the last 30 minutes, you can use the `-n` (number) and `-s` (since) options:

```bash
sudo journalctl -n 100 -s "30 minutes ago"
```

This will display the last 100 log entries from the last 30 minutes.

Another useful filtering option is the `-b` (boot) option, which allows you to view the logs for a specific boot session. For example, to view the logs for the current boot session, you can use:

```bash
sudo journalctl -b
```

You can also combine multiple filtering options to further refine your search. For instance, to view the error and critical log entries for the SSH daemon in the last 30 minutes, you can use:

```bash
sudo journalctl -u sshd.service -p err..crit -n 100 -s "30 minutes ago"
```

By exploring these filtering options, you can effectively navigate and analyze the system logs to troubleshoot issues, monitor system health, and gain valuable insights into your Linux environment.

In the next step, we'll dive deeper into more advanced use cases and practical examples of the `journalctl` command.
