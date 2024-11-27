# Terminate Processes Using the kill Command

In this step, you will learn how to terminate processes using the `kill` command.

First, let's start a new long-running process:

```bash
sleep 1000 &
```

This will start a new `sleep` process that runs for 1000 seconds in the background.

To view the PID of the `sleep` process, run:

```bash
ps aux | grep sleep
```

Example output:

```
labex      5678  0.0  0.0   8192   728 pts/0    S    12:34   0:00 sleep 1000
```

The PID of the `sleep` process is `5678`.

Now, let's terminate this process using the `kill` command:

```bash
kill 5678
```

The `sleep` process should have terminated immediately.

To verify that the process has been terminated, run the following command again:

```bash
ps aux | grep sleep
```

The output should not show the `sleep` process anymore.
