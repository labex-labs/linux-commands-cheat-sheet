# Analyze System Performance Using top

In this final step, we will use the top command to analyze the system performance and identify any potential bottlenecks or issues.

Let's start by monitoring the system's overall performance:

```
$ top
```

Pay attention to the following key metrics:

- CPU utilization: The percentage of CPU time spent in user mode, system mode, nice mode, idle, waiting, hardware interrupts, and software interrupts. High CPU utilization may indicate a CPU-bound process or application.
- Memory usage: The total, free, used, and buffered/cached memory. High memory usage may indicate a memory-intensive process or a potential memory leak.
- Swap usage: The total, free, and used swap space. Excessive swap usage may indicate a lack of physical memory.
- Process list: The list of the most resource-intensive processes, sorted by CPU or memory usage. Identify any processes that are consuming a significant amount of system resources.

To further investigate a specific process, you can use the following options:

- `k`: Kill a process
- `r`: Renice a process (change its priority)
- `f`: Manage the columns displayed
- `o`: Customize the sort order

For example, to view the top 5 processes sorted by CPU usage:

```
$ top -o %CPU -n 5
```

Example output:

```
top - 14:36:37 up 1 day, 12:48,  0 users,  load average: 0.00, 0.00, 0.00
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

This will help you identify any processes that are consuming a significant amount of CPU resources.

To exit the top command, press `q`.
