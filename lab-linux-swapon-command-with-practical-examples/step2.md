# Check Current Swap Space Usage and Configuration

In this step, you will learn how to check the current swap space usage and configuration on your Linux system.

First, you can use the `free` command to display the current memory usage, including the swap space:

```
$ free -h
              total        used        free      shared  buff/cache   available
Mem:           1.9Gi       144Mi       1.6Gi       2.7Mi       141Mi       1.6Gi
Swap:          2.0Gi          0B       2.0Gi
```

The output shows that the system has 1.9 GiB of RAM and 2.0 GiB of swap space, and currently, 0 bytes of swap space is being used.

You can also use the `swapon` command to get more detailed information about the swap space configuration:

```
$ sudo swapon --show
NAME      TYPE SIZE USED PRIO
/dev/sda2 partition 2.0G 0B -2
```

This command displays the swap space devices, their type, size, current usage, and priority. In this example, the swap space is configured as a partition with a size of 2.0 GB and a priority of -2.

To get even more detailed information, you can use the `cat` command to read the contents of the `/proc/swaps` file:

```
$ cat /proc/swaps
Filename				Type		Size	Used	Priority
/dev/sda2                               partition	2097148	0	-2
```

This file provides the same information as the `swapon --show` command, but in a different format.
