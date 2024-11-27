# Understand the Purpose and Usage of mpstat Command

In this step, you will learn about the purpose and usage of the `mpstat` command in Linux. The `mpstat` command is a powerful tool for monitoring and analyzing CPU utilization metrics across multiple CPUs.

The `mpstat` command provides detailed information about CPU activity, including CPU utilization, interrupts, context switches, and more. It can be used to identify performance bottlenecks, optimize resource allocation, and troubleshoot system issues.

Let's start by running the `mpstat` command to see its basic output:

```bash
sudo mpstat
```

Example output:

```
Linux 5.15.0-58-generic (labex-ubuntu)   05/11/2023      _x86_64_        (4 CPU)

07:00:01 PM  CPU    %usr   %nice    %sys %iowait    %irq   %soft  %steal  %guest  %gnice   %idle
07:00:01 PM  all    0.25    0.00    0.19    0.00    0.00    0.00    0.00    0.00    0.00   99.76
```

The output shows various CPU utilization metrics for all CPUs on the system. The `%usr` column represents the percentage of CPU time spent in user mode, `%sys` represents the percentage of CPU time spent in kernel mode, and `%idle` represents the percentage of time the CPU was idle.

You can also use the `mpstat` command to monitor CPU utilization for a specific CPU. To do this, you can pass the CPU number as an argument:

```bash
sudo mpstat -P 0
```

This will show the CPU utilization metrics for the first CPU (CPU 0).

In the next step, you will learn how to explore CPU utilization metrics in more detail using the `mpstat` command.
