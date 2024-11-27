# Filter Processes by User

In this step, you will learn how to filter the list of running processes by the user who owns them.

The `ps` command provides several options to filter the process list, one of which is the `-u` or `--user` option. This option allows you to display processes owned by a specific user.

Let's start by listing all processes owned by the `labex` user:

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

You can also use the `grep` command to filter the output of the `ps` command further. For example, to find all processes owned by the `labex` user that are running the `bash` command:

```bash
ps -ef | grep -i labex | grep -i bash
```

Example output:

```
labex     1234  4321  0 10:30 pts/0    00:00:00 /bin/bash
```

In this command, the `ps -ef` lists all processes, the first `grep -i labex` filters the output to show only processes owned by the `labex` user, and the second `grep -i bash` filters the output to show only processes running the `bash` command.

The `-i` option in the `grep` commands makes the search case-insensitive, so it will match both uppercase and lowercase occurrences of "labex" and "bash".
