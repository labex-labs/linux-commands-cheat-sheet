# Understand the Purpose of the nohup Command

In this step, you will learn about the purpose of the `nohup` command in Linux. The `nohup` command is used to run a command or script in the background, even after you log out of your terminal session.

When you run a long-running process in a terminal, it will be terminated if you log out or close the terminal window. The `nohup` command allows you to run a process that will continue to run even after you log out, preventing it from being terminated.

Let's start by running a simple command using `nohup`:

```bash
nohup sleep 60 &
```

This will run the `sleep 60` command in the background, and the output will be saved to a file named `nohup.out` in the current directory.

Example output:

```
[1] 12345
```

The `&` at the end of the command runs the process in the background, and the output shows the process ID (PID) of the background process.

To verify that the process is still running, you can use the `ps` command:

```bash
ps aux | grep sleep
```

Example output:

```
labex     12345  0.0  0.0   8184   712 pts/0    S    14:20   0:00 sleep 60
```

As you can see, the `sleep 60` process is still running, even though we've logged out of the terminal.
