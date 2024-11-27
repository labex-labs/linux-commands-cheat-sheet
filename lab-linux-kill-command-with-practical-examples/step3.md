# Explore Advanced kill Command Options

In this step, you will explore some advanced options of the `kill` command.

The `kill` command can send different signals to processes. The default signal is `SIGTERM`, which requests the process to terminate gracefully. However, you can also send other signals, such as `SIGINT` (interrupt), `SIGKILL` (immediate termination), and more.

Let's start by creating a new long-running process:

```bash
sleep 1000 &
```

Now, let's terminate the process using the `SIGINT` signal:

```bash
kill -SIGINT 5678
```

The `sleep` process should have been interrupted and terminated.

You can also use the signal number instead of the signal name:

```bash
kill -2 5678
```

This will send the `SIGINT` signal to the process with PID 5678.

Another useful option is the `-9` option, which sends the `SIGKILL` signal. This signal cannot be ignored by the process and will terminate it immediately:

```bash
kill -9 5678
```

The `SIGKILL` signal is a "last resort" option when the process does not respond to other signals.
