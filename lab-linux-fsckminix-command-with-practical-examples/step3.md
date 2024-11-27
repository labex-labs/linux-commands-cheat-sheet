# Practical Examples of Using fsck.minix

In this final step, we will explore some practical examples of using the `fsck.minix` command.

## Checking a Minix File System on a Loopback Device

Let's start by creating another Minix file system on a loopback device:

```bash
sudo dd if=/dev/zero of=minix2.img bs=1M count=10
sudo mkfs.minix minix2.img
```

Now, we can check the file system using the `fsck.minix` command:

```bash
sudo fsck.minix minix2.img
```

Example output:

```
minix2.img: clean
```

The output indicates that the file system is clean and does not require any repairs.

## Checking a Minix File System on a Physical Device

If you have a physical device with a Minix file system, you can use the `fsck.minix` command to check it. Assuming your Minix partition is `/dev/sda1`, you can run the following command:

```bash
sudo fsck.minix /dev/sda1
```

This will check the Minix file system on the `/dev/sda1` partition.

## Repairing a Corrupted Minix File System

Let's intentionally corrupt the Minix file system we created earlier and then use `fsck.minix` to repair it:

```bash
sudo dd if=/dev/zero of=minix2.img bs=1 count=1024 conv=notrunc
sudo fsck.minix minix2.img
```

Example output:

```
minix2.img: Superblock is invalid, trying backup blocks...
minix2.img: Root inode is not a directory, fixing.
minix2.img: Inode 2 has wrong mode, fixing.
minix2.img: Inode 2 has wrong size, fixing.
minix2.img: Inode 2 has wrong block(s), fixing.
minix2.img: Inode 2 has wrong timestamps, fixing.
minix2.img: Inode 2 has wrong owner/group, fixing.
minix2.img: File system repaired.
```

The output shows that the `fsck.minix` command detected the corruption and automatically repaired the file system.
