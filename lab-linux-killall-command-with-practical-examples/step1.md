# Understand the killall Command

In this step, you will learn about the `killall` command in Linux, which allows you to terminate processes by name. The `killall` command is a powerful tool for process management, enabling you to quickly and efficiently kill multiple processes at once.

First, let's explore the basic usage of the `killall` command:

```bash
sudo killall process_name
```

The above command will terminate all processes with the specified `process_name`. For example, to kill all instances of the `firefox` process, you can run:

```bash
sudo killall firefox
```

Example output:

```
firefox: no process found
```

In this example, since there were no `firefox` processes running, the command returned a "no process found" message.

The `killall` command also supports various options to customize its behavior. Some common options include:

- `-i`: Prompt before killing each process
- `-q`: Quiet mode, do not output any error messages
- `-u`: Kill processes owned by the specified user
- `-s`: Send the specified signal instead of SIGTERM (the default)

For example, to kill all processes owned by the `labex` user, you can run:

```bash
sudo killall -u labex
```

Example output:

```
[sudo] password for labex:
```

The `killall` command is a powerful tool for process management, allowing you to terminate multiple processes by name or user. In the next step, you will learn how to use the `killall` command in more practical scenarios.
