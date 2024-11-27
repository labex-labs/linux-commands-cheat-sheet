# Understand the pidof Command

In this step, you will learn about the `pidof` command in Linux, which is used to find the process ID (PID) of a running process.

The `pidof` command is a useful tool for system monitoring and management. It allows you to quickly identify the PID of a process, which can be helpful when you need to interact with or terminate a specific process.

To use the `pidof` command, simply provide the name of the process you want to find the PID for. For example, to find the PID of the `nginx` process, you can run:

```bash
pidof nginx
```

Example output:

```
1234 5678
```

The output shows that there are two processes running with the name `nginx`, and their PIDs are `1234` and `5678`.

The `pidof` command can also be used to find the PID of a process that was started by a specific command. For example, to find the PID of the `python3` process that is running a script named `my_script.py`, you can run:

```bash
pidof -x my_script.py
```

Example output:

```
9012
```

The `-x` option tells `pidof` to look for the PID of the process that was started by the specified command, rather than just the process name.

In the next step, you will learn how to use the `pidof` command to find the PID of a running process.
