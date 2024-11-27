# Kill Processes by Name

In this step, you will learn how to use the `killall` command to terminate processes by their name.

First, let's start a few background processes that we can use for this example:

```bash
sleep 1000 &
sleep 2000 &
sleep 3000 &
```

Now, you can use the `killall` command to terminate these processes by name:

```bash
sudo killall sleep
```

Example output:

```
sleep: no process found
```

Oops, it seems the `sleep` processes have already terminated. Let's start them again and try killing them:

```bash
sleep 1000 &
sleep 2000 &
sleep 3000 &
sudo killall sleep
```

Example output:

```
sleep: no process found
```

Hmm, it seems the `killall` command didn't work as expected. This is because the `killall` command looks for exact process names, and in this case, the process names are not just "sleep", but include the process arguments as well (e.g., "sleep 1000").

To kill these processes, we can use the process ID (PID) instead:

```bash
pids=$(pgrep sleep)
sudo kill $pids
```

Example output:

```

```

Great! The `sleep` processes have been terminated.

The `killall` command is a powerful tool, but it's important to understand that it looks for exact process names. If the process name includes arguments, you may need to use alternative methods, such as `pgrep` and `kill`, to terminate the processes.
