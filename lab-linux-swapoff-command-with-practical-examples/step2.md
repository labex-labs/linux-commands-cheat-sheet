# Identify Swap Partitions and Swap Files

In this step, you will learn how to identify the swap partitions and swap files on your Linux system.

First, let's check the current swap usage using the `free` command:

```bash
free -h
```

Example output:

```
              total        used        free      shared  buff/cache   available
Mem:           1.9Gi       528Mi       1.1Gi       4.0Mi       298Mi       1.2Gi
Swap:          2.0Gi       0Bi         2.0Gi
```

From the output, we can see that there is a 2 GB swap partition currently in use.

To get more detailed information about the swap partitions and files, you can use the `swapon` command with the `-s` option:

```bash
sudo swapon -s
```

Example output:

```
Filename                                Type            Size    Used    Priority
/dev/sda2                                partition       2097148 0       -2
```

This output shows that the swap space is a partition located at `/dev/sda2` with a size of 2 GB.

You can also use the `cat` command to view the contents of the `/proc/swaps` file, which provides similar information:

```bash
cat /proc/swaps
```

Example output:

```
Filename                                Type            Size    Used    Priority
/dev/sda2                                partition       2097148 0       -2
```

If you have any swap files configured on your system, they would also be listed in the output of these commands.
