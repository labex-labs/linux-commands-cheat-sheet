# Explore CPU Utilization Metrics with mpstat

In this step, you will learn how to use the `mpstat` command to explore CPU utilization metrics in more detail.

First, let's take a closer look at the output of the `mpstat` command:

```bash
sudo mpstat -P ALL
```

Example output:

```
Linux 5.15.0-58-generic (labex-ubuntu)   05/11/2023      _x86_64_        (4 CPU)

07:05:01 PM  CPU    %usr   %nice    %sys %iowait    %irq   %soft  %steal  %guest  %gnice   %idle
07:05:01 PM  all    0.25    0.00    0.19    0.00    0.00    0.00    0.00    0.00    0.00   99.76
07:05:01 PM    0    0.25    0.00    0.25    0.00    0.00    0.00    0.00    0.00    0.00   99.50
07:05:01 PM    1    0.25    0.00    0.25    0.00    0.00    0.00    0.00    0.00    0.00   99.50
07:05:01 PM    2    0.25    0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00   99.75
07:05:01 PM    3    0.25    0.00    0.25    0.00    0.00    0.00    0.00    0.00    0.00   99.50
```

The `-P ALL` option shows the CPU utilization metrics for each individual CPU, in addition to the overall system average.

You can also use the `mpstat` command to monitor CPU utilization over time. For example, to monitor CPU utilization every 2 seconds for 10 seconds:

```bash
sudo mpstat 2 5
```

This will output the CPU utilization metrics every 2 seconds, for a total of 5 iterations (10 seconds).

Additionally, you can use the `mpstat` command to filter the output based on specific criteria. For example, to show the CPU utilization for only the user mode:

```bash
sudo mpstat -u
```

This will output the `%usr` column, which represents the percentage of CPU time spent in user mode.

In the next step, you will learn how to analyze CPU performance across multiple CPUs using the `mpstat` command.
