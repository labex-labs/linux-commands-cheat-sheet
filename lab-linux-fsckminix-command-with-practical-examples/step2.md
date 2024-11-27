# Checking and Repairing Minix File Systems

In this step, we will learn how to use the `fsck.minix` command to check and repair Minix file systems.

First, let's create a Minix file system on a loopback device:

```bash
sudo dd if=/dev/zero of=minix.img bs=1M count=10
sudo mkfs.minix minix.img
```

This will create a 10 MB Minix file system image named `minix.img`.

Now, let's mount the Minix file system and create some files and directories:

```bash
sudo mount -t minix minix.img /mnt
sudo touch /mnt/file1.txt
sudo mkdir /mnt/dir1
sudo umount /mnt
```

To check the file system, we can use the `fsck.minix` command:

```bash
sudo fsck.minix minix.img
```

Example output:

```
minix.img: clean
```

The output indicates that the file system is clean and does not require any repairs.

Next, let's intentionally corrupt the file system by removing the superblock:

```bash
sudo dd if=/dev/zero of=minix.img bs=1 count=1024 conv=notrunc
```

Now, let's try to check the file system again:

```bash
sudo fsck.minix minix.img
```

Example output:

```
minix.img: Superblock is invalid, trying backup blocks...
minix.img: Root inode is not a directory, fixing.
minix.img: Inode 2 has wrong mode, fixing.
minix.img: Inode 2 has wrong size, fixing.
minix.img: Inode 2 has wrong block(s), fixing.
minix.img: Inode 2 has wrong timestamps, fixing.
minix.img: Inode 2 has wrong owner/group, fixing.
minix.img: File system repaired.
```

The output shows that the `fsck.minix` command detected the corruption and automatically repaired the file system.

Finally, let's mount the repaired file system and verify the contents:

```bash
sudo mount -t minix minix.img /mnt
ls -l /mnt
```

Example output:

```
total 0
-rw-r--r-- 1 root root 0 Apr 13 11:22 file1.txt
drwxr-xr-x 2 root root 0 Apr 13 11:22 dir1
```

The file and directory we created earlier are still present, indicating that the file system was successfully repaired.
