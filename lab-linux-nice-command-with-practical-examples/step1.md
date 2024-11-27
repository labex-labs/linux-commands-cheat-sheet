# Understand the nice Command

In this step, we will learn about the `nice` command in Linux, which allows you to adjust the priority of a process. The `nice` command is used to set the niceness value of a process, which determines the process's scheduling priority.

The niceness value ranges from -20 to 19, with -20 being the highest priority and 19 being the lowest priority. The default niceness value for a new process is 0.

Let's start by checking the current niceness value of a process:

```bash
# Check the niceness value of the current shell process
nice -n 0 echo $PPID
```

Example output:

```
22456
```

The output shows the process ID (PID) of the current shell process, which has a niceness value of 0.

Now, let's run a command with a different niceness value:

```bash
# Run a command with a niceness value of 5
nice -n 5 sleep 60 &
```

In this example, we've used the `nice` command to run the `sleep 60` command with a niceness value of 5. The `&` at the end of the command puts the process in the background.

You can verify the niceness value of the `sleep` process using the `ps` command:

```bash
ps -p $(pgrep sleep) -o pid,ni
```

Example output:

```
  PID   NI
22457   5
```

The output shows that the `sleep` process has a niceness value of 5.
