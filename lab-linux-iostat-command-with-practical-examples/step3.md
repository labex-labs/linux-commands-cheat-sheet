# Monitor Disk I/O Performance Using iostat

In this step, we will learn how to use the `iostat` command to monitor the disk I/O performance of your system.

First, let's run the `iostat` command with the `-x` option to get more detailed disk I/O statistics:

```bash
iostat -x
```

Example output:

```
Linux 5.15.0-52-generic (labex-ubuntu)   07/11/2023      _x86_64_        (2 CPU)

avg-cpu:  %user   %nice %system %iowait  %steal   %idle
           0.50    0.00     0.25     0.00     0.00    99.25

Device            r/s     w/s     rkB/s     wkB/s   await  r_await w_await  svctm  %util
sda              0.17    0.17       1.67      1.67    5.00     5.00     5.00   2.00   0.03
```

The additional metrics provided by the `-x` option include:

- `r/s`: Reads per second
- `w/s`: Writes per second
- `rkB/s`: Read throughput in kB/s
- `wkB/s`: Write throughput in kB/s
- `await`: Average time for I/O requests (in milliseconds)
- `r_await`: Average time for read requests (in milliseconds)
- `w_await`: Average time for write requests (in milliseconds)
- `svctm`: Average service time (in milliseconds)
- `%util`: Percentage of CPU time during which I/O requests were issued (CPU utilization for I/O)

These metrics can help you identify performance bottlenecks or issues with your disk I/O.

To monitor the disk I/O performance over time, you can use the `iostat` command with the `-x` option and specify a delay and count:

```bash
iostat -x 2 5
```

This will display the disk I/O statistics every 2 seconds for 5 iterations, allowing you to observe the changes in performance over time.
