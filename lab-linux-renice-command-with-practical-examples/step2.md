# Adjust Process Priority with renice

In this step, you will learn how to adjust the priority of a running process using the `renice` command.

First, let's start a new process that we can experiment with:

```
sleep 1000 &
```

This will start a `sleep` process that will run for 1000 seconds in the background.

Now, let's check the priority of the `sleep` process:

```
ps -p <PID> -o pid,ni
```

Replace `<PID>` with the process ID of the `sleep` process. This will show the process ID and the nice value (priority) of the process.

Example output:

```
  PID   NI
12345   0
```

The nice value of 0 indicates that the process has the default priority.

Now, let's use the `renice` command to change the priority of the `sleep` process to 5:

```
sudo renice -n 5 -p <PID>
```

Replace `<PID>` with the process ID of the `sleep` process.

Example output:

```
process with pid 12345 old priority 0, new priority 5
```

Let's verify the new priority of the `sleep` process:

```
ps -p <PID> -o pid,ni
```

Example output:

```
  PID   NI
12345   5
```

As you can see, the nice value of the `sleep` process has been changed to 5, which means its priority has been reduced.

Now, let's try to change the priority of the `sleep` process to a higher priority of -5:

```
sudo renice -n -5 -p <PID>
```

Example output:

```
process with pid 12345 old priority 5, new priority -5
```

Verify the new priority:

```
ps -p <PID> -o pid,ni
```

Example output:

```
  PID   NI
12345  -5
```

The nice value is now -5, which means the process has a higher priority.

By adjusting the priority of processes using the `renice` command, you can optimize system performance and ensure that critical processes receive the necessary CPU time.
