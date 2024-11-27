# Understand the who Command

In this step, we will explore the `who` command, which is a powerful tool in Linux for displaying information about currently logged-in users.

The `who` command provides information such as the username, terminal, login time, and the remote host from which the user has logged in. This information can be useful for system administrators and users to understand the current activity on the system.

Let's start by running the `who` command:

```bash
who
```

Example output:

```
labex   pts/0        2023-04-11 09:15 (172.17.0.1)
```

The output shows that the user `labex` is logged in on the `pts/0` terminal, which was logged in at `2023-04-11 09:15` from the remote host `172.17.0.1`.

The `who` command can also display additional information by using various options. Some common options include:

- `who -a`: Displays a more detailed output, including the idle time and the process ID of the user's shell.
- `who -H`: Displays a header line with the column names.
- `who -q`: Displays a quick list of users logged in, showing only the usernames.
- `who am i`: Displays information about the current user.

Let's try some of these options:

```bash
who -a
```

Example output:

```
labex   pts/0        2023-04-11 09:15 00:00   (172.17.0.1)
```

The `-a` option shows the idle time, which is `00:00` in this case, indicating that the user is actively using the terminal.

```bash
who -H
```

Example output:

```
NAME     LINE         TIME             COMMENT
labex    pts/0        2023-04-11 09:15  (172.17.0.1)
```

The `-H` option adds a header line to the output, making it easier to understand the meaning of each column.

```bash
who am i
```

Example output:

```
labex   pts/0        2023-04-11 09:15 (172.17.0.1)
```

The `who am i` command displays information about the current user.
