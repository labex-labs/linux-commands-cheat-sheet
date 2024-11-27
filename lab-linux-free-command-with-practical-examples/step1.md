# Understand the Purpose and Syntax of the free Command

In this step, you will learn about the purpose and syntax of the `free` command in Linux. The `free` command is a useful tool for monitoring the system's memory usage, including both physical memory (RAM) and swap space.

To use the `free` command, simply run the following in the terminal:

```bash
free
```

This will display the current memory usage on your system. The output will look similar to this:

```
              total        used        free      shared  buff/cache   available
Mem:        2048236     1023936      368584       72156      655716     1546700
Swap:       1048572           0     1048572
```

The output shows the total, used, free, shared, buffer/cache, and available memory on the system. The "Swap" section shows the total, used, and free swap space.

You can also use the following options with the `free` command to customize the output:

- `-h`: Display the memory size in human-readable format (e.g., MB, GB)
- `-m`: Display the memory size in megabytes
- `-g`: Display the memory size in gigabytes
- `-t`: Display the total for all memory types

For example, to display the memory usage in a human-readable format, run:

```bash
free -h
```

Example output:

```
              total        used        free      shared  buff/cache   available
Mem:           2.0G        1.0G        360M         70M        640M        1.5G
Swap:          1.0G          0B        1.0G
```

This step has introduced the purpose and basic usage of the `free` command. In the next step, you will learn how to analyze memory usage in more detail using the `free` command.
