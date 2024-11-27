# Understand the Purpose of the kill Command

In this step, you will learn about the purpose of the `kill` command in Linux. The `kill` command is used to terminate or send signals to running processes.

The `kill` command allows you to:

- Terminate a process by sending a signal to it
- Send various signals to a process, such as `SIGTERM` (default), `SIGINT`, `SIGKILL`, etc.
- Terminate processes by their process ID (PID) or process name

Let's start by running a simple command that creates a long-running process:

```bash
sleep 1000 &
```

This will start a `sleep` process that runs for 1000 seconds in the background.

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
