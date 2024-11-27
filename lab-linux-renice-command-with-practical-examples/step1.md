# Understand the renice Command

In this step, you will learn about the `renice` command in Linux, which is used to change the priority of a running process. The priority of a process determines how much CPU time it will receive from the system.

The `renice` command allows you to adjust the priority of a process, which can be useful for managing system resources and ensuring that important processes receive the necessary CPU time.

To use the `renice` command, you need to specify the new priority value and the process ID (PID) of the process you want to modify. The priority value can range from -20 (highest priority) to 19 (lowest priority), with 0 being the default.

Here's an example of how to use the `renice` command:

```
sudo renice -n 5 -p 1234
```

This command will set the priority of the process with PID 1234 to 5.

Example output:

```
process with pid 1234 old priority 0, new priority 5
```

The `-n` option specifies the new priority value, and the `-p` option specifies the process ID.

You can also use the `renice` command to change the priority of all processes owned by a specific user:

```
sudo renice -n 10 -u username
```

This command will set the priority of all processes owned by the user `username` to 10.

It's important to note that only the `root` user or a user with the necessary permissions can use the `renice` command to change the priority of processes that they do not own.
