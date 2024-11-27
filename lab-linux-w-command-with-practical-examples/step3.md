# Monitor System Load and Resource Utilization

In this step, we will learn how to monitor the system load and resource utilization using the `w` command and other related tools.

The `w` command provides information about the system load, which is displayed in the form of three load averages:

```bash
w
```

Example output:

```
 17:40:01 up 1 day, 23:12,  1 user,  load average: 0.00, 0.00, 0.00
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
user2    pts/0    172.17.0.1       17:30    0.00s  0.01s  0.00s w
```

The three load average numbers represent the system load over the last 1 minute, 5 minutes, and 15 minutes, respectively. A load average of 0.00 indicates that the system is not under any significant load.

To get more detailed information about system resource utilization, we can use the `top` command:

```bash
top
```

Example output:

```
top - 17:40:42 up 1 day, 23:12,  1 user,  load average: 0.00, 0.00, 0.00
Tasks: 105 total,   1 running,  104 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
KiB Mem :  2044880 total,  1605244 free,   160676 used,   278960 buff/cache
KiB Swap:  1048572 total,  1048572 free,        0 used.  1603204 avail Mem

   PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND
     1 root      20   0   41824   4464   2896 S   0.0  0.2   0:01.37 systemd
     2 root      20   0       0      0      0 S   0.0  0.0   0:00.01 kthreadd
     3 root      20   0       0      0      0 I   0.0  0.0   0:00.00 rcu_gp
```

The `top` command provides real-time information about the system's CPU, memory, and process utilization. You can use it to identify the processes consuming the most resources and take appropriate actions.

Additionally, you can use the `free` command to get information about the system's memory usage:

```bash
free -h
```

Example output:

```
              total        used        free      shared  buff/cache   available
Mem:           1.9G        156M        1.5G        1.1M        278M        1.5G
Swap:          1.0G          0B        1.0G
```

The `free` command displays the total, used, and available memory on the system, as well as the swap space usage.

By monitoring the system load and resource utilization using these tools, you can identify performance bottlenecks and take appropriate actions to optimize your system's performance.
