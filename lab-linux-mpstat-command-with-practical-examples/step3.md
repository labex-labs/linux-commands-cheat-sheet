# Analyze CPU Performance Across Multiple CPUs

In this final step, you will learn how to use the `mpstat` command to analyze CPU performance across multiple CPUs on your system.

One of the key benefits of the `mpstat` command is its ability to provide detailed information about the performance of individual CPUs. This can be particularly useful when troubleshooting performance issues or optimizing resource allocation.

Let's start by running the `mpstat` command with the `-P ALL` option to see the CPU utilization metrics for each individual CPU:

```bash
sudo mpstat -P ALL
```

Example output:

```
Linux 5.15.0-58-generic (labex-ubuntu)   05/11/2023      _x86_64_        (4 CPU)

07:10:01 PM  CPU    %usr   %nice    %sys %iowait    %irq   %soft  %steal  %guest  %gnice   %idle
07:10:01 PM  all    0.25    0.00    0.19    0.00    0.00    0.00    0.00    0.00    0.00   99.76
07:10:01 PM    0    0.25    0.00    0.25    0.00    0.00    0.00    0.00    0.00    0.00   99.50
07:10:01 PM    1    0.25    0.00    0.25    0.00    0.00    0.00    0.00    0.00    0.00   99.50
07:10:01 PM    2    0.25    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   99.75
07:10:01 PM    3    0.25    0.00    0.25    0.00    0.00    0.00    0.00    0.00    0.00   99.50
```

This output shows the CPU utilization metrics for each individual CPU, as well as the overall system average. You can use this information to identify any imbalances or hotspots in your CPU usage.

You can also use the `mpstat` command to monitor CPU performance over time. For example, to monitor CPU utilization every 2 seconds for 10 seconds:

```bash
sudo mpstat -P ALL 2 5
```

This will output the CPU utilization metrics for each CPU every 2 seconds, for a total of 5 iterations (10 seconds).

By analyzing the CPU utilization metrics across multiple CPUs, you can identify performance bottlenecks, optimize resource allocation, and ensure that your system is running efficiently.
