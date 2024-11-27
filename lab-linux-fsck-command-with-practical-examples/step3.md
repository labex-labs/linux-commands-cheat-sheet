# Repairing Filesystem Issues Using fsck

In the previous step, we introduced an error to the file system by corrupting the superblock. Now, let's learn how to use the `fsck` command to repair the file system.

First, let's check the file system again to see the issues:

```bash
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

As you can see, the `fsck` command detected the corrupted superblock and provided an option to clear the journal.

To repair the file system, we can use the `-y` (yes) option to automatically answer "yes" to all prompts:

```bash
sudo fsck -y /dev/loop0
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

The `-y` option automatically answers "yes" to all prompts, allowing the `fsck` command to repair the file system without user intervention.

After the repair, you can remount the file system and continue using it.
