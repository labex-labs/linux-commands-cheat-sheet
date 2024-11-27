# Understand the Purpose and Syntax of the fdisk Command

In this step, you will learn about the purpose and syntax of the `fdisk` command in Linux. The `fdisk` command is a command-line tool used to create, delete, and manage disk partitions.

To begin, let's start by understanding the purpose of the `fdisk` command. The `fdisk` command is used to create, delete, and modify disk partitions. It allows you to create new partitions, change the size of existing partitions, and change the type of partitions. This is useful when you need to manage the storage space on your Linux system.

Now, let's look at the basic syntax of the `fdisk` command:

```
sudo fdisk [options] [device]
```

Here's what the different parts of the command mean:

- `sudo`: This is used to run the command with elevated privileges, as the `fdisk` command requires root access.
- `fdisk`: This is the name of the command.
- `[options]`: These are optional flags that you can use to customize the behavior of the `fdisk` command.
- `[device]`: This is the name of the disk device that you want to work with, such as `/dev/sda`.

Some common options for the `fdisk` command include:

- `-l`: Lists the partition table for the specified device.
- `-u`: Uses sectors as the unit of measurement instead of cylinders.
- `-c=dos`: Sets the compatible mode to be DOS.

Example output:

```
$ sudo fdisk -l /dev/sda
Disk /dev/sda: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model: Virtual disk
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x00000000

Device     Boot Start      End  Sectors  Size Id Type
/dev/sda1        2048 41943039 41940992   20G 83 Linux
```

In this example, the `fdisk -l /dev/sda` command lists the partition table for the `/dev/sda` device, which is a 20 GB virtual disk with a single Linux partition.
