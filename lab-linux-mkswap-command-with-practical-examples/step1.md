# Understand the Purpose of the mkswap Command

In this step, we will explore the purpose of the `mkswap` command in Linux. The `mkswap` command is used to set up a Linux swap area on a disk partition or in a file. Swap space is used by the operating system when the amount of physical RAM memory is full. When the system runs out of RAM, it can use the swap space on the disk to temporarily hold less-used data, freeing up RAM for more active processes.

To understand the purpose of the `mkswap` command, let's first check the current swap status on our system:

```bash
sudo swapon --show
```

Example output:

```
NAME      TYPE SIZE USED PRIO
/dev/sda5 partition 2G 0B -2
```

As you can see, there is currently a swap partition `/dev/sda5` configured on the system with a size of 2GB. The `mkswap` command is used to initialize this swap partition or a swap file, so that the operating system can start using it.

In the next step, we will learn how to create a swap file using the `mkswap` command.
