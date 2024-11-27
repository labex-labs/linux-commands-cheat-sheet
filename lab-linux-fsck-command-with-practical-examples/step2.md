# Checking Filesystem Integrity with fsck

In this step, we will learn how to use the `fsck` command to check the integrity of a file system in Linux.

First, let's create a test file system using a loopback device:

```bash
sudo dd if=/dev/zero of=test.img bs=1M count=100
sudo losetup /dev/loop0 test.img
sudo mkfs.ext4 /dev/loop0
```

Now, we can use the `fsck` command to check the integrity of the file system:

```bash
sudo fsck /dev/loop0
```

Example output:

```
fsck from util-linux 2.37.2
e2fsck 1.46.5 (30-Dec-2021)
/dev/loop0: clean, 11/25600 files, 6400/102400 blocks
```

The output shows that the file system is clean, with no issues detected.

Let's introduce an error to the file system by corrupting the superblock:

```bash
sudo dd if=/dev/zero of=test.img bs=1 count=1 seek=1024
sudo fsck /dev/loop0
```

Example output:

```
fsck from util-linux 2.37.2
e2fsck 1.46.5 (30-Dec-2021)
/dev/loop0: Superblock invalid, trying backup blocks...
/dev/loop0: Going to read-only
/dev/loop0: Backup superblock options:
        -b 32768
/dev/loop0: Superblock has an invalid journal (inode 8).
Clear journal (y/n)? y
/dev/loop0: Clearing journal inode
/dev/loop0: The filesystem size (according to the superblock) is 102400 blocks
The physical size of the device is 204800 blocks
Either the superblock or the partition table is likely to be corrupt!
/dev/loop0: ***** FILE SYSTEM WAS MODIFIED *****
/dev/loop0: 11/25600 files (0.0% non-contiguous), 6400/102400 blocks
```

In this example, we can see that the `fsck` command detected the corrupted superblock and provided options to repair the file system. It is important to carefully review the output and follow the recommended actions to ensure the integrity of your file system.
