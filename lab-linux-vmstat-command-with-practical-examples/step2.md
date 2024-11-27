# Monitoring System Performance with vmstat

In this step, you will learn how to use the vmstat command to monitor various aspects of your system's performance, including CPU, memory, and disk I/O.

Let's start by monitoring the CPU utilization of your system. The vmstat command provides detailed information about CPU usage, including the percentage of time spent in user mode, system mode, idle, and wait states.

To monitor CPU utilization, run the following command:

```
$ vmstat 2 5
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 0  0      0 1877028  16308 1359812    0    0     0     0  367  688  0  0 100  0  0
 0  0      0 1877028  16308 1359812    0    0     0     0  369  682  0  0 100  0  0
 0  0      0 1877028  16308 1359812    0    0     0     0  373  696  0  0 100  0  0
 0  0      0 1877028  16308 1359812    0    0     0     0  367  688  0  0 100  0  0
 0  0      0 1877028  16308 1359812    0    0     0     0  367  688  0  0 100  0  0
```

In the output, the "cpu" section shows the percentage of time the CPU spent in user mode (`us`), system mode (`sy`), idle (`id`), and waiting for I/O (`wa`). In this example, the CPU is mostly idle (100%).

Next, let's monitor memory usage. The vmstat command provides information about the amount of free, used, and cached memory, as well as swap space usage.

To monitor memory usage, run the following command:

```
$ vmstat
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 1  0      0 1877028  16308 1359812    0    0     0     0    0    0  0  0 100  0  0
```

In the output, the "memory" section shows the amount of free memory (`free`), used memory (`used`), and cached memory (`cache`). The "swap" section shows the amount of used and free swap space (`swpd` and `free`).

Finally, let's monitor disk I/O. The vmstat command provides information about the number of blocks read from and written to disk.

To monitor disk I/O, run the following command:

```
$ vmstat
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 1  0      0 1877028  16308 1359812    0    0     0     0    0    0  0  0 100  0  0
```

In the output, the "io" section shows the number of blocks read from disk (`bi`) and written to disk (`bo`).

By using the vmstat command, you can effectively monitor various aspects of your system's performance and identify potential bottlenecks or issues.
