# Create and Enable a Swap File

In this step, you will learn how to create and enable a swap file on your Linux system.

First, let's create a swap file with a size of 1 GB:

```
$ sudo fallocate -l 1G /swapfile
$ sudo chmod 600 /swapfile
```

The `fallocate` command is used to create a file of the specified size (1 GB in this case), and the `chmod` command sets the appropriate permissions for the swap file.

Next, you need to format the swap file and enable it:

```
$ sudo mkswap /swapfile
$ sudo swapon /swapfile
```

The `mkswap` command initializes the swap file, and the `swapon` command enables the swap file.

To verify that the swap file is now being used, you can use the `free` command again:

```
$ free -h
              total        used        free      shared  buff/cache   available
Mem:           1.9Gi       144Mi       1.6Gi       2.7Mi       141Mi       1.6Gi
Swap:          3.0Gi          0B       3.0Gi
```

The output shows that the total swap space is now 3.0 GB, which includes the 1 GB swap file you just created.

To make the swap file persistent across system reboots, you need to add an entry for it in the `/etc/fstab` file:

```
$ echo '/swapfile swap swap defaults 0 0' | sudo tee -a /etc/fstab
```

This adds a line to the `/etc/fstab` file that will automatically enable the swap file when the system boots up.
