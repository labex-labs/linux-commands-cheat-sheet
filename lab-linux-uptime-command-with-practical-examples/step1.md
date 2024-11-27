# Understand the uptime Command

In this step, we will explore the Linux `uptime` command, which provides information about the system's uptime and load average.

The `uptime` command displays the following information:

- The current time
- How long the system has been running (uptime)
- The number of users currently logged in
- The system load averages for the past 1, 5, and 15 minutes

Let's start by running the `uptime` command in the terminal:

```bash
uptime
```

Example output:

```
 15:42:17 up 1 day, 12:34,  0 users,  load average: 0.00, 0.01, 0.05
```

The output shows that the system has been running for 1 day and 12 hours, with no users currently logged in, and the load averages for the past 1, 5, and 15 minutes are 0.00, 0.01, and 0.05, respectively.

The load average represents the average number of processes that are either running or waiting to run over the specified time periods. A load average of 1.0 means that, on average, one process was running or waiting to run at any given time.
