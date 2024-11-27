# Introduction to badblocks Command

In this step, we will explore the `badblocks` command, which is a Linux utility used to scan a disk for bad blocks. The `badblocks` command can be used to identify and mark bad sectors on a disk, which can help prevent data loss and improve the reliability of your storage devices.

First, let's check the version of the `badblocks` command installed on our system:

```bash
badblocks --version
```

Example output:

```
badblocks 1.46.2 (11-Nov-2022)
```

The `badblocks` command has several options that allow you to customize the scan process. Some of the most commonly used options include:

- `-b`: Specifies the block size in bytes (default is 1024 bytes)
- `-c`: Specifies the number of blocks to check at a time (default is 64)
- `-s`: Prints the status of the scan as it progresses
- `-t`: Specifies the test type (non-destructive read-write, non-destructive read-only, or destructive)
- `-v`: Enables verbose output

To perform a non-destructive read-only scan on a disk, you can use the following command:

```bash
sudo badblocks -v /dev/sdb
```

This command will scan the `/dev/sdb` disk for bad blocks and display the progress of the scan. The `-v` option enables verbose output, which provides more detailed information about the scan.
