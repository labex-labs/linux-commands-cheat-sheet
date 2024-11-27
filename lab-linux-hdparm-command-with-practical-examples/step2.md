# Measure Disk Performance with hdparm

In this step, you will learn how to use the `hdparm` command to measure the performance of your disk. This information can be useful for identifying performance bottlenecks and optimizing your system's disk configuration.

Let's start by measuring the disk's read performance using the `-t` option:

```bash
sudo hdparm -t /dev/sda
```

Example output:

```
/dev/sda:
 Timing buffered disk reads: 236 MB in  3.01 seconds = 78.41 MB/sec
```

This command measures the disk's buffered read performance, which provides an estimate of the disk's maximum sustained read speed.

Next, let's measure the disk's cached read performance using the `-T` option:

```bash
sudo hdparm -T /dev/sda
```

Example output:

```
/dev/sda:
 Timing cached reads:   13624 MB in  2.00 seconds = 6812.00 MB/sec
```

The cached read performance measures the speed of reading data from the disk's cache, which is typically much faster than reading directly from the disk.

Finally, let's measure the disk's sequential read and write performance using the `-t` and `-T` options together:

```bash
sudo hdparm -tT /dev/sda
```

Example output:

```
/dev/sda:
 Timing buffered disk reads: 236 MB in  3.01 seconds = 78.41 MB/sec
 Timing cached reads:   13624 MB in  2.00 seconds = 6812.00 MB/sec
```

This command provides both the buffered disk read and cached read performance metrics, giving you a more comprehensive view of your disk's performance.
