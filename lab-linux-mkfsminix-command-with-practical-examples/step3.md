# Mounting and Interacting with the Minix File System

In the previous steps, we created a Minix file system and added some files and directories to it. In this step, we will learn how to mount the Minix file system and interact with it.

First, let's mount the Minix file system:

```bash
sudo mount /dev/loop0 /mnt
```

This mounts the Minix file system on the `/mnt` directory.

Now, let's explore the contents of the mounted Minix file system:

```bash
sudo ls -l /mnt
```

Example output:

```
total 12
-rw-r--r-- 1 root root 13 May 23 12:34 file1.txt
drwxr-xr-x 2 root root 1024 May 23 12:34 directory1
```

As you can see, the file and directory we created in the previous step are now visible in the mounted Minix file system.

Let's now create a new file and directory within the Minix file system:

```bash
sudo touch /mnt/file2.txt
sudo mkdir /mnt/directory2
```

The above commands create a new file `file2.txt` and a new directory `directory2` within the mounted Minix file system.

Finally, let's unmount the Minix file system:

```bash
sudo umount /mnt
```

This completes the process of mounting and interacting with the Minix file system.
