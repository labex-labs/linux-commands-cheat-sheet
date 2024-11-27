# Disable Swap Using the swapoff Command

In this final step, you will learn how to disable the swap partition or swap file using the `swapoff` command.

First, let's confirm the current swap usage:

```bash
free -h
```

Example output:

```
              total        used        free      shared  buff/cache   available
Mem:           1.9Gi       528Mi       1.1Gi       4.0Mi       298Mi       1.2Gi
Swap:          2.0Gi       0Bi         2.0Gi
```

As you can see, there is a 2 GB swap partition currently in use.

To disable the swap, run the following command:

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

Now, the "Swap" line shows 0 Bytes for both total and used, indicating that the swap is disabled.
