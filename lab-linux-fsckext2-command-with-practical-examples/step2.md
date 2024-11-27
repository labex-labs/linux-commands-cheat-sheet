# Checking and Repairing an ext2 File System

In this step, we will learn how to use the `fsck.ext2` command to check and repair an ext2 file system.

First, let's create a test file system using the `dd` command:

```bash
sudo dd if=/dev/zero of=test.img bs=1M count=100
sudo mkfs.ext2 test.img
```

This will create a 100 MB ext2 file system image named `test.img`.

Now, let's check the file system using the `fsck.ext2` command:

```bash
sudo fsck.ext2 test.img
```

Example output:

```
test.img: clean, 11/25600 files, 7236/102400 blocks
```

The output shows that the file system is clean, with 11 files and 7,236 blocks.

Next, let's intentionally corrupt the file system by deleting a few blocks:

```bash
sudo dd if=/dev/zero of=test.img bs=1M count=1 seek=50
```

This will overwrite the 50th 1 MB block of the file system with zeros, causing a file system error.

Now, let's try to check and repair the file system:

```bash
sudo fsck.ext2 -a test.img
```

Example output:

```
test.img: ***** FILE SYSTEM WAS MODIFIED *****
test.img: 11/25600 files (0.0% non-contiguous), 7236/102400 blocks
```

The `-a` option tells `fsck.ext2` to automatically repair the file system without prompting the user. The output shows that the file system was modified during the repair process.
