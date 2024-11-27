# Understand the Purpose of the swapoff Command

In this step, you will learn about the purpose of the `swapoff` command in Linux. The `swapoff` command is used to disable swap partitions or swap files, which are used by the operating system to provide additional memory when the physical RAM is exhausted.

When you run the `swapoff` command, it immediately stops the use of the specified swap space, freeing up the memory that was being used by the swap. This can be useful in various scenarios, such as when you want to resize or remove a swap partition, or when you want to free up memory for other processes.

Let's start by checking the current swap usage on your system:

```bash
free -h
```

Example output:

```
              total        used        free      shared  buff/cache   available
Mem:           1.9Gi       528Mi       1.1Gi       4.0Mi       298Mi       1.2Gi
Swap:          2.0Gi       0Bi         2.0Gi
```

In this example, we can see that there is a 2 GB swap partition currently in use.

Now, let's disable the swap using the `swapoff` command:

```bash
sudo swapoff -a
```

The `-a` option tells `swapoff` to disable all swap partitions and files on the system.

After running the `swapoff` command, let's verify that the swap is no longer in use:

```bash
free -h
```

Example output:

```
              total        used        free      shared  buff/cache   available
Mem:           1.9Gi       528Mi       1.1Gi       4.0Mi       298Mi       1.2Gi
Swap:          0Bi         0Bi         0Bi
```

As you can see, the swap space is now disabled and the "Swap" line shows 0 Bytes for both total and used.
