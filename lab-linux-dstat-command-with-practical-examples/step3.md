# Monitoring Memory Usage with dstat

In this step, we will learn how to use the dstat command to monitor the memory usage on our Linux system.

First, let's run the dstat command with the `--mem` option to display detailed memory statistics:

```bash
dstat --mem
```

Example output:

```
-----memory-usage-----
used buff cache free
 1.2G  276M 1.1G  1.3G
 1.2G  276M 1.1G  1.3G
 1.2G  276M 1.1G  1.3G
 1.2G  276M 1.1G  1.3G
 1.2G  276M 1.1G  1.3G
```

The output shows the following memory usage metrics:

- `used`: The amount of used memory
- `buff`: The amount of memory used for buffers
- `cache`: The amount of memory used for caching
- `free`: The amount of free memory

You can also use the `--swap` option to monitor swap usage:

```bash
dstat --swap
```

Example output:

```
-----swap-----
used free
   0B  2.0G
   0B  2.0G
   0B  2.0G
   0B  2.0G
   0B  2.0G
```

This shows the amount of used and free swap space on the system.

To get a comprehensive view of both memory and swap usage, you can combine the `--mem` and `--swap` options:

```bash
dstat --mem --swap
```

Example output:

```
-----memory-usage----- -----swap-----
used buff cache free used free
 1.2G  276M 1.1G  1.3G   0B  2.0G
 1.2G  276M 1.1G  1.3G   0B  2.0G
 1.2G  276M 1.1G  1.3G   0B  2.0G
 1.2G  276M 1.1G  1.3G   0B  2.0G
 1.2G  276M 1.1G  1.3G   0B  2.0G
```

This provides a detailed overview of the system's memory and swap usage, allowing you to quickly identify any potential memory-related issues or bottlenecks.
