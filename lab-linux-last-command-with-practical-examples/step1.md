# Understand the Purpose of the last Command

In this step, you will learn about the purpose of the `last` command in Linux. The `last` command is used to display information about the last users who have logged into the system, including their username, the terminal they used, the time they logged in, and the time they logged out.

To use the `last` command, simply run the following in your terminal:

```bash
last
```

Example output:

```
labex   pts/0        172.17.0.1     Fri Mar 31 10:23   still logged in
labex   pts/0        172.17.0.1     Fri Mar 31 10:22 - 10:23  (00:00)
labex   pts/0        172.17.0.1     Fri Mar 31 10:21 - 10:22  (00:01)
labex   pts/0        172.17.0.1     Fri Mar 31 10:20 - 10:21  (00:01)
reboot  system boot  4.15.0-162-generic Fri Mar 31 10:20 - 10:23  (00:03)
```

The output shows the last users who have logged into the system, along with the terminal they used, their IP address, the time they logged in, and the time they logged out. The `reboot` line indicates the last time the system was rebooted.

You can also use the `last` command to display information about specific users or terminals by passing their names as arguments. For example:

```bash
last labex
```

This will show only the login/logout information for the user `labex`.
