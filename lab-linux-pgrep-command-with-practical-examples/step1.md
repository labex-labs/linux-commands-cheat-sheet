# Understand the Purpose of pgrep Command

In this step, you will learn about the purpose and usage of the `pgrep` command in Linux. The `pgrep` command is a powerful tool that allows you to search for running processes based on their name or other criteria.

The `pgrep` command is useful when you need to find the process ID (PID) of a running process, especially when you don't know the exact process name or want to search for processes based on specific criteria. This can be helpful in various scenarios, such as monitoring system processes, automating tasks, or troubleshooting issues.

Let's start by exploring the basic usage of the `pgrep` command:

```bash
pgrep <process_name>
```

This command will return the PID(s) of the process(es) that match the specified `<process_name>`.

Example output:

```
1234
5678
9012
```

The output shows the PIDs of the processes that match the specified process name.
