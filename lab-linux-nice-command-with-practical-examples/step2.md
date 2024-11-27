# Adjust Process Priority with nice

In this step, we will learn how to adjust the priority of a process using the `nice` command.

First, let's start a new process with a higher priority (lower niceness value):

```bash
# Start a process with a niceness value of -5
nice -n -5 sleep 120 &
```

In this example, we've used the `nice` command to start the `sleep 120` command with a niceness value of -5, which gives the process a higher priority.

You can verify the niceness value of the `sleep` process using the `ps` command:

```bash
ps -p $(pgrep sleep) -o pid,ni
```

Example output:

```
  PID   NI
22458  -5
```

The output shows that the `sleep` process has a niceness value of -5.

Now, let's start another process with a lower priority (higher niceness value):

```bash
# Start a process with a niceness value of 10
nice -n 10 sleep 120 &
```

In this example, we've used the `nice` command to start the `sleep 120` command with a niceness value of 10, which gives the process a lower priority.

You can verify the niceness value of the `sleep` process using the `ps` command:

```bash
ps -p $(pgrep sleep) -o pid,ni
```

Example output:

```
  PID   NI
22459  10
```

The output shows that the `sleep` process has a niceness value of 10.

To change the niceness value of an existing process, you can use the `renice` command:

```bash
# Change the niceness value of the first sleep process to 0
renice -n 0 -p $(pgrep sleep | head -n 1)
```

You can verify the niceness value of the `sleep` process using the `ps` command:

```bash
ps -p $(pgrep sleep) -o pid,ni
```

Example output:

```
  PID   NI
22458   0
22459  10
```

The output shows that the first `sleep` process now has a niceness value of 0, while the second `sleep` process still has a niceness value of 10.
