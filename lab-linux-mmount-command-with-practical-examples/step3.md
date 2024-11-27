# Mount a File System Using the mmount Command

In this step, we will practice mounting a file system using the `mount` command.

First, let's create a directory to serve as the mount point for our file system:

```
sudo mkdir /mnt/data
```

Next, we will create a loopback device that will represent a file system. This will allow us to practice mounting a file system without the need for a physical storage device.

```
dd if=/dev/zero of=~/data.img bs=1M count=100
sudo losetup /dev/loop0 ~/data.img
sudo mkfs.ext4 /dev/loop0
```

The above commands create a 100MB file `data.img`, set up a loopback device `/dev/loop0` that represents the file, and then format the loopback device with an `ext4` file system.

Now, let's mount the file system to the `/mnt/data` directory:

```
sudo mount -t ext4 /dev/loop0 /mnt/data
```

This command mounts the `ext4` file system on the `/dev/loop0` device to the `/mnt/data` directory.

To verify that the file system is mounted, you can run the following command:

```
mount | grep /mnt/data
```

The output should show the mounted file system:

```
/dev/loop0 on /mnt/data type ext4 (rw,relatime)
```

Now that you have mounted the file system, you can navigate to the `/mnt/data` directory and interact with the files and directories within it.
