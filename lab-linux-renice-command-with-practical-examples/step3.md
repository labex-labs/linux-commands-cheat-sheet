# Practical Examples of renice Command Usage

In this step, you will explore some practical examples of using the `renice` command to manage process priorities in different scenarios.

## Example 1: Prioritize a CPU-intensive Task

Let's start a CPU-intensive task in the background:

```
dd if=/dev/zero of=/dev/null &
```

This will start a `dd` process that writes data from `/dev/zero` to `/dev/null`, which is a CPU-intensive operation.

Now, let's check the priority of the `dd` process:

```
ps -p <PID> -o pid,ni
```

Replace `<PID>` with the process ID of the `dd` process.

Example output:

```
  PID   NI
12345   0
```

The process has the default priority of 0.

Let's increase the priority of the `dd` process to -10 using the `renice` command:

```
sudo renice -n -10 -p <PID>
```

Replace `<PID>` with the process ID of the `dd` process.

Example output:

```
process with pid 12345 old priority 0, new priority -10
```

Now, let's verify the new priority:

```
ps -p <PID> -o pid,ni
```

Example output:

```
  PID   NI
12345  -10
```

By increasing the priority of the `dd` process, we ensure that it receives more CPU time, which can be useful for CPU-intensive tasks that need to be completed quickly.

## Example 2: Reduce Priority of a Background Process

Let's start a long-running background process:

```
sleep 1000 &
```

This will start a `sleep` process that will run for 1000 seconds in the background.

Now, let's check the priority of the `sleep` process:

```
ps -p <PID> -o pid,ni
```

Replace `<PID>` with the process ID of the `sleep` process.

Example output:

```
  PID   NI
12345   0
```

The process has the default priority of 0.

Let's reduce the priority of the `sleep` process to 10 using the `renice` command:

```
sudo renice -n 10 -p <PID>
```

Replace `<PID>` with the process ID of the `sleep` process.

Example output:

```
process with pid 12345 old priority 0, new priority 10
```

Now, let's verify the new priority:

```
ps -p <PID> -o pid,ni
```

Example output:

```
  PID   NI
12345  10
```

By reducing the priority of the `sleep` process, we ensure that it receives less CPU time, which can be useful for background processes that are not time-critical and can run at a lower priority without affecting the overall system performance.

These examples demonstrate how the `renice` command can be used to manage the priority of processes in different scenarios, allowing you to optimize system performance and resource utilization.
