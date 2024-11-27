# Explore top Command Options and Customizations

In this step, we will explore the various options and customizations available in the top command to tailor the output to your specific needs.

Let's start by displaying the help menu:

```
$ top -h
```

This will show you all the available options and their descriptions. Some of the commonly used options include:

- `-d`: Set the delay between updates (default is 3 seconds)
- `-n`: Specify the number of iterations (default is unlimited)
- `-p`: Monitor specific process IDs
- `-u`: Display processes owned by a specific user
- `-o`: Sort the process list by a specific column

For example, to display the top 5 processes sorted by memory usage, you can run:

```
$ top -o %MEM -n 5
```

Example output:

```
top - 14:30:37 up 1 day, 12:42,  0 users,  load average: 0.00, 0.00, 0.00
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

You can also customize the columns displayed by pressing the `f` key while in the top command. This will allow you to add, remove, or rearrange the columns to suit your needs.

To exit the top command, press `q`.
