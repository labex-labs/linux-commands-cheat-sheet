# Terminate Processes by Process ID

In this step, you will learn how to use the `pkill` command to terminate processes by their process ID (PID).

First, let's start a new process that we can use for this example:

```bash
# Start a new process
sleep 1000 &
```

To get the PID of the `sleep` process, you can use the `ps` command:

```bash
ps -ef | grep sleep
```

Example output:

```
labex      3456  3455  0 11:30 pts/0    00:00:00 sleep 1000
```

In this example, the PID of the `sleep` process is `3456`.

Now, let's use `pkill` to terminate the process by its PID:

```bash
sudo pkill -P 3456
```

Example output:

```
[1]+ Terminated              sleep 1000
```

As you can see, the `sleep` process has been terminated.

You can also use the `-9` option to send a SIGKILL signal to the process, which will force it to terminate immediately:

```bash
sudo pkill -9 -P 3456
```

This command will terminate the process with the PID of 3456 using the SIGKILL signal.

Example output:

```
[1]+ Killed                  sleep 1000
```

Remember, the `pkill` command is a powerful tool, so use it with caution to avoid accidentally terminating important system processes.
