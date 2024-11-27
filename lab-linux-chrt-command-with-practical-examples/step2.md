# Adjust the Real-Time Priority of a Process

In this step, you will learn how to adjust the real-time priority of a process using the `chrt` command.

Real-time scheduling policies in Linux are designed to provide deterministic and low-latency behavior for time-critical applications. The `chrt` command allows you to set the scheduling policy and priority of a process.

Let's start by creating a new process using the `sleep` command and then adjust its real-time priority.

```bash
# Start a new process
sudo chrt -f -p 10 sleep 60 &
```

This command starts a new `sleep` process with the real-time FIFO (First-In-First-Out) scheduling policy and a priority of 10.

You can verify the scheduling policy and priority of the new process using the `chrt` command:

```bash
chrt -p $(pgrep sleep)
```

Example output:

```
pid 12345's current scheduling policy: SCHED_FIFO
pid 12345's current scheduling priority: 10
```

Now, let's try changing the real-time priority of the `sleep` process to a higher value of 20:

```bash
sudo chrt -f -p 20 $(pgrep sleep)
```

You can verify the updated priority by running the `chrt -p` command again:

```bash
chrt -p $(pgrep sleep)
```

Example output:

```
pid 12345's current scheduling policy: SCHED_FIFO
pid 12345's current scheduling priority: 20
```

The `chrt` command allows you to dynamically adjust the real-time priority of a running process, which can be useful for optimizing the performance of time-critical applications or ensuring that important processes are scheduled with higher priority.
