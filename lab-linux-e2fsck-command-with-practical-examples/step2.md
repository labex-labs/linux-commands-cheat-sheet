# Check and Repair a Corrupted Ext4 File System

In this step, you will learn how to use the `e2fsck` command to check and repair a corrupted Ext4 file system.

First, let's create a file system image that we can use for this exercise:

```bash
sudo dd if=/dev/zero of=ext4_image.img bs=1M count=100
sudo mkfs.ext4 ext4_image.img
```

The above commands create a 100 MB file system image named `ext4_image.img` and format it as an Ext4 file system.

Now, let's intentionally corrupt the file system by modifying the superblock:

```bash
sudo debugfs -w ext4_image.img
debugfs: set_super_value s_magic 0x1234
debugfs: write_super_block
debugfs: quit
```

The above commands use the `debugfs` tool to modify the `s_magic` field in the superblock, which is a unique identifier for the Ext4 file system. This action will corrupt the file system.

To check and repair the corrupted file system, use the `e2fsck` command:

```bash
sudo e2fsck -f ext4_image.img
```

The `-f` option forces the file system check, even if the file system appears to be clean.

Example output:

```
ext4_image.img: recovering journal
ext4_image.img: clean, 11/25600 files, 25/100000 blocks
```

The output shows that the `e2fsck` command was able to recover the journal and repair the corrupted file system.
