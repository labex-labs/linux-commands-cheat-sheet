# Understand the pkill Command

In this step, you will learn about the `pkill` command in Linux, which allows you to terminate processes by name or process ID (PID).

The `pkill` command is a powerful tool for managing processes in a Linux system. It provides a convenient way to kill processes without having to know their exact PIDs. This can be especially useful when you need to terminate multiple instances of a process or when you're not sure of the exact PID of the process you want to terminate.

To use the `pkill` command, you can specify the process name or a pattern that matches the process name. The command will then terminate all matching processes.

Here's an example of how to use `pkill` to terminate a process by name:

```bash
sudo pkill -f firefox
```

This command will terminate all processes with the name "firefox".

Example output:

```
[1]+ Terminated              firefox
```

You can also use the `-9` option to send a SIGKILL signal to the process, which will force it to terminate immediately:

```bash
sudo pkill -9 -f firefox
```

This command will terminate all processes with the name "firefox" using the SIGKILL signal.

Example output:

```
[1]+ Killed                  firefox
```

In addition to terminating processes by name, you can also use `pkill` to terminate processes by their PID. To do this, you can use the `-P` option followed by the PID:

```bash
sudo pkill -P 12345
```

This command will terminate the process with the PID of 12345.

Example output:

```
[1]+ Terminated              process 12345
```

Remember, the `pkill` command is a powerful tool, so use it with caution to avoid accidentally terminating important system processes.
