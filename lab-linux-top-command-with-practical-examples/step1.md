# Understand the top Command

In this step, we will learn about the top command, which is a powerful tool for monitoring system performance and resource utilization in Linux. The top command provides real-time information about running processes, CPU, memory, and other system resources.

Let's start by running the top command:

```
$ top
```

Example output:

```
top - 14:22:37 up 1 day, 12:34,  0 users,  load average: 0.00, 0.01, 0.05
Tasks: 101 total,   1 running,  99 sleeping,   1 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   1992.0 total,   1537.0 free,    235.0 used,    220.0 buff/cache
MiB Swap:   2047.9 total,   2047.9 free,      0.0 used.   1555.3 avail Mem

   PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
     1 root      20   0    8788   5688   3828 S   0.0   0.3   0:02.14 systemd
     2 root      20   0       0      0      0 S   0.0   0.0   0:00.01 kthreadd
     3 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_gp
     4 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_par_gp
     5 root      20   0       0      0      0 I   0.0   0.0   0:00.00 slub_flushwq
```

The top command displays various system information, including:

- Uptime: The time since the system was last booted.
- Tasks: The total number of running, sleeping, stopped, and zombie processes.
- CPU utilization: The percentage of CPU time spent in user mode, system mode, nice mode, idle, waiting, hardware interrupts, and software interrupts.
- Memory usage: The total, free, used, and buffered/cached memory.
- Swap usage: The total, free, and used swap space.
- Process list: A list of the most resource-intensive processes, sorted by CPU or memory usage.

You can customize the top command's output by pressing various keys, such as:

- `h`: Display the help menu
- `1`: Toggle between per-CPU and aggregate CPU utilization
- `f`: Manage the columns displayed
- `o`: Customize the sort order
- `u`: Filter processes by a specific user

To exit the top command, press `q`.
