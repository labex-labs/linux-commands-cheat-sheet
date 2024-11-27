# Understand the ps Command

In this step, you will learn about the `ps` (process status) command, which is a fundamental Linux command used to display information about running processes on the system.

The `ps` command provides a snapshot of the current processes running on the system, including their process ID (PID), user, CPU and memory usage, and other relevant information.

Let's start by running the basic `ps` command:

```bash
ps
```

Example output:

```
  PID TTY          TIME CMD
 1234 pts/0    00:00:00 bash
 5678 pts/0    00:00:00 ps
```

The output shows the current shell process (`bash`) and the `ps` command itself.

To see more detailed information about running processes, you can use the following options:

```bash
ps -ef
```

Example output:

```
UID        PID  PPID  C STIME TTY          TIME CMD
labex     1234  4321  0 10:30 pts/0    00:00:00 /bin/bash
labex     5678  1234  0 10:30 pts/0    00:00:00 ps -ef
```

The `-e` option displays all processes, and the `-f` option provides a full-format listing, including the user ID (UID), process ID (PID), parent process ID (PPID), CPU usage (C), start time (STIME), terminal (TTY), CPU time (TIME), and the command (CMD).

You can also filter the output by specific criteria, such as the user running the processes:

```bash
ps -u labex
```

Example output:

```
  PID TTY          TIME CMD
 1234 pts/0    00:00:00 bash
 5678 pts/0    00:00:00 ps
```

This command shows all processes owned by the `labex` user.
