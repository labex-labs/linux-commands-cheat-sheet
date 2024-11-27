# Understand the Purpose and Usage of iostat Command

In this step, we will learn about the purpose and usage of the `iostat` command in Linux. The `iostat` command is a powerful tool for monitoring system input/output (I/O) performance, including CPU utilization and disk I/O statistics.

First, let's install the `sysstat` package, which includes the `iostat` command:

```bash
sudo apt-get update
sudo apt-get install -y sysstat
```

Now, let's run the `iostat` command to see the basic CPU and I/O statistics:

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

The output shows the average CPU utilization and various disk I/O metrics, such as transactions per second (tps), read and write throughput (kB_read/s and kB_wrtn/s), and total read and write data (kB_read and kB_wrtn).

You can also use the `iostat` command to monitor specific devices or display more detailed statistics. For example, to monitor the `sda` device every 2 seconds for 10 times:

```bash
iostat -d sda 2 10
```

This will provide a more detailed view of the I/O performance for the `sda` device over time.
