# Identify the Current Terminal Device

In this step, you will learn how to identify the current terminal device using the `tty` command.

First, let's verify that we are in an interactive terminal session by running the `tty` command:

```bash
tty
```

Example output:

```
/dev/pts/0
```

The output shows that the current terminal device is `/dev/pts/0`, which is a pseudo-terminal device.

You can also use the `who` command to get more information about the current terminal session:

```bash
who
```

Example output:

```
labex pts/0        2023-04-12 15:22 (172.17.0.1)
```

The output shows that the current user `labex` is logged in on the terminal device `/dev/pts/0`.

To get the terminal type (e.g., `xterm`, `vt100`, `dumb`), you can use the `echo $TERM` command:

```bash
echo $TERM
```

Example output:

```
xterm-256color
```

This indicates that the current terminal type is `xterm-256color`.

Understanding the current terminal device and type can be useful when writing shell scripts or troubleshooting terminal-related issues.
