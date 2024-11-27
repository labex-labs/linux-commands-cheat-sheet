# Understand the Purpose of the chrt Command

In this step, you will learn about the purpose of the `chrt` command in Linux. The `chrt` command is used to set and retrieve the real-time scheduling attributes of a running process.

The `chrt` command allows you to:

- Adjust the real-time priority of a process
- Manage the scheduling policy of a process

This can be useful for optimizing the performance of time-critical applications or ensuring that important processes are scheduled with higher priority.

Let's start by checking the current real-time priority of a process. Run the following command to get the real-time priority of the current shell process:

```bash
chrt -p $$
```

Example output:

```
pid 1234's current scheduling policy: SCHED_OTHER
pid 1234's current scheduling priority: 0
```

The output shows that the current shell process is using the `SCHED_OTHER` scheduling policy with a priority of 0. This is the default scheduling policy for most regular processes.

Now, let's try changing the real-time priority of a process. We'll use the `sleep` command to create a new process and then use `chrt` to adjust its real-time priority.

```bash
sudo chrt -f -p 10 $$
```

This command sets the real-time FIFO (First-In-First-Out) scheduling policy with a priority of 10 for the current shell process.

Example output:

```
pid 1234's current scheduling policy: SCHED_FIFO
pid 1234's current scheduling priority: 10
```

The `chrt` command allows you to manage the scheduling policies and priorities of processes, which can be useful for optimizing system performance and ensuring that critical tasks are executed in a timely manner.
