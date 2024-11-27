# Perform a Dry Run and Fix Errors Automatically

In this step, you will learn how to perform a dry run of the `e2fsck` command and how to automatically fix any errors found in the file system.

First, let's create another corrupted file system image:

```bash
sudo dd if=/dev/zero of=ext4_image2.img bs=1M count=100
sudo mkfs.ext4 ext4_image2.img
sudo debugfs -w ext4_image2.img
debugfs: set_super_value s_magic 0x1234
debugfs: write_super_block
debugfs: quit
```

Now, let's perform a dry run of the `e2fsck` command to see what errors are found, without actually fixing them:

```bash
sudo e2fsck -n ext4_image2.img
```

The `-n` option tells `e2fsck` to perform a dry run, which means it will check the file system for errors but won't make any changes.

Example output:

```
ext4_image2.img: Superblock invalid, trying backup blocks...
ext4_image2.img: Bad magic number in super-block
ext4_image2.img: Group descriptors look bad... trying backup blocks
ext4_image2.img: Unable to fix errors, so marking file system read-only
ext4_image2.img: Filesystem has errors, check forced.
```

The output shows that the `e2fsck` command found several errors in the file system, including an invalid superblock and bad group descriptors.

To automatically fix the errors, you can run the `e2fsck` command without the `-n` option:

```bash
sudo e2fsck -y ext4_image2.img
```

The `-y` option tells `e2fsck` to automatically answer "yes" to all questions, allowing it to fix the errors without user intervention.

Example output:

```
ext4_image2.img: Superblock invalid, trying backup blocks...
ext4_image2.img: Using backup superblock.
ext4_image2.img: Group descriptors look bad... trying backup blocks
ext4_image2.img: Reinitializing group descriptors
ext4_image2.img: 11/25600 files (0.0% non-contiguous), 25/100000 blocks
```

The output shows that the `e2fsck` command was able to automatically fix the errors in the file system by using backup superblocks and group descriptors.
