# Understand the Concept of Swap Space in Linux

In this step, you will learn about the concept of swap space in Linux. Swap space is a reserved area on a hard disk that the operating system can use when the system runs out of RAM (Random Access Memory). When the system requires more memory than the available RAM, it can temporarily transfer inactive pages from RAM to the swap space, freeing up RAM for more active processes.

Swap space can be either a dedicated partition on the hard disk or a swap file. Swap partitions are typically created during the installation of the operating system, while swap files can be created and managed later on.

The use of swap space helps to prevent the system from running out of memory, which can lead to performance degradation or even system crashes. However, excessive use of swap space can also have a negative impact on system performance, as accessing data on the hard disk is much slower than accessing data in RAM.

To check the current swap space usage and configuration, you can use the `free` command:

```
$ free -h
              total        used        free      shared  buff/cache   available
Mem:           1.9Gi       144Mi       1.6Gi       2.7Mi       141Mi       1.6Gi
Swap:          2.0Gi          0B       2.0Gi
```

In the example output, the system has 1.9 GiB of RAM and 2.0 GiB of swap space configured.
