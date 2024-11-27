# Monitor System Processes with watch

In this step, you will learn how to use the `watch` command to monitor system processes in real-time.

The `watch` command can be used in conjunction with the `ps` (process status) command to continuously display information about running processes on your system.

To monitor system processes using `watch`, run the following command:

```
watch -n 5 'ps aux'
```

This will execute the `ps aux` command every 5 seconds and display the output in your terminal. The `ps aux` command shows information about all running processes, including the user, process ID, CPU and memory usage, and the command that started the process.

You can also use the `watch` command with other process-related commands, such as `top` or `htop`, to get a more detailed view of system processes:

```
watch -n 5 top
```

This will display the `top` command output, which shows the processes sorted by CPU or memory usage.

Example output:

```
Every 5.0s: top                                                     labex@ubuntu: Fri Apr 28 14:40:41 2023

top - 14:40:41 up 8 min,  0 users,  load average: 0.00, 0.00, 0.00
Tasks:  38 total,   1 running,  37 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :    1984.0 total,    1909.7 free,      29.3 used,      45.0 buff/cache
MiB Swap:       0.0 total,       0.0 free,       0.0 used.    1909.9 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
      1 root      20   0    8548   3292   2340 S   0.0   0.2   0:01.38 systemd
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kthreadd
      3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp
```

The `watch` command allows you to continuously monitor system processes, making it easier to identify resource-intensive applications or detect any unusual process activity.
