# Manage Scheduling Policies with the chrt Command

In this final step, you will learn how to manage different scheduling policies using the `chrt` command.

Linux supports several scheduling policies, each with its own characteristics and use cases. The main scheduling policies are:

- `SCHED_OTHER`: The default scheduling policy for regular processes. It uses a time-sharing approach to distribute CPU time among processes.
- `SCHED_FIFO`: A real-time, First-In-First-Out scheduling policy. Processes with this policy run until they voluntarily yield the CPU or are preempted by a higher-priority process.
- `SCHED_RR`: A real-time, Round-Robin scheduling policy. Similar to `SCHED_FIFO`, but processes are assigned a time slice and are preempted when the time slice expires.
- `SCHED_BATCH`: A policy designed for CPU-bound, batch-style processes. It gives these processes a slightly lower priority than `SCHED_OTHER`.
- `SCHED_IDLE`: A policy designed for low-priority, idle-time processes.

Let's try setting different scheduling policies for a process using the `chrt` command:

```bash
# Set the SCHED_FIFO policy with priority 10
sudo chrt -f -p 10 sleep 60 &

# Set the SCHED_RR policy with priority 15
sudo chrt -r -p 15 sleep 60 &

# Set the SCHED_BATCH policy
sudo chrt -b sleep 60 &

# Set the SCHED_IDLE policy
sudo chrt -i sleep 60 &
```

You can use the `chrt -l` command to list all the available scheduling policies:

```bash
chrt -l
```

Example output:

```
Scheduling policies available:
SCHED_OTHER
SCHED_FIFO
SCHED_RR
SCHED_BATCH
SCHED_IDLE
```

The `chrt` command provides a flexible way to manage the scheduling policies and priorities of processes, allowing you to optimize system performance and ensure that critical tasks are executed in a timely manner.
