# Understand the Purpose of the disown Command

In this step, you will learn about the purpose of the `disown` command in Linux. The `disown` command is used to detach a running process from the shell, allowing it to continue running even after the shell session has been closed.

When you start a process in the foreground, it is associated with the current shell session. If you close the shell, the process will be terminated. However, by using the `disown` command, you can detach the process from the shell, allowing it to continue running in the background, even after the shell has been closed.

This can be useful in scenarios where you need to run a long-running process, such as a backup script or a web server, and you want to ensure that the process continues to run even if you log out of the system or close the terminal.

Let's start by running a simple background process and then using the `disown` command to detach it from the shell.

```bash
# Start a background process that runs indefinitely
$ sleep 1000 &
[1] 12345

# Detach the process from the shell using the disown command
$ disown %1
```

Example output:

```

```

In the example above, we first start a background process using the `sleep 1000 &` command. This will run the `sleep` command in the background for 1000 seconds (approximately 16 minutes).

Next, we use the `disown %1` command to detach the process from the shell. The `%1` refers to the job number of the background process, which you can find using the `jobs` command.

After running the `disown` command, the process will continue to run in the background, even if you log out of the system or close the terminal.
