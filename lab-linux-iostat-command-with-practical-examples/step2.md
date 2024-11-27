# Analyze CPU and I/O Statistics with iostat

In this step, we will learn how to analyze the CPU and I/O statistics provided by the `iostat` command.

First, let's run the `iostat` command to see the overall system statistics:

```bash
iostat
```

Example output:

```
Linux 5.15.0-52-generic (labex-ubuntu)   07/11/2023      _x86_64_        (2 CPU)

avg-cpu:  %user   %nice %system %iowait  %steal   %idle
           0.50    0.00     0.25     0.00     0.00    99.25

Device             tps    kB_read/s    kB_wrtn/s    kB_read    kB_wrtn
sda              0.17         1.67         1.67       1024       1024
```

The output shows the average CPU utilization and various disk I/O metrics. Let's break down the information:

- `avg-cpu`: This section shows the average CPU utilization, including the percentage of time spent in user mode (`%user`), nice mode (`%nice`), system mode (`%system`), I/O wait (`%iowait`), and idle time (`%idle`).
- `Device`: This section shows the I/O statistics for each block device, such as the transactions per second (`tps`), read and write throughput (`kB_read/s` and `kB_wrtn/s`), and total read and write data (`kB_read` and `kB_wrtn`).

Now, let's take a closer look at the CPU utilization. To see the CPU statistics for each individual CPU, we can use the `-c` option:

```bash
iostat -c
```

Example output:

```
Linux 5.15.0-52-generic (labex-ubuntu)   07/11/2023      _x86_64_        (2 CPU)

avg-cpu:  %user   %nice %system %iowait  %steal   %idle
           0.50    0.00     0.25     0.00     0.00    99.25
           0.50    0.00     0.25     0.00     0.00    99.25
```

This shows the CPU utilization for each individual CPU core.

To monitor the I/O statistics for a specific device, we can use the `-d` option followed by the device name:

```bash
iostat -d sda
```

Example output:

```
Linux 5.15.0-52-generic (labex-ubuntu)   07/11/2023      _x86_64_        (2 CPU)

Device             tps    kB_read/s    kB_wrtn/s    kB_read    kB_wrtn
sda              0.17         1.67         1.67       1024       1024
```

This provides more detailed I/O statistics for the `sda` device.
