# Create a Bootable USB Drive Using mkbootdisk

In this step, you will learn how to create a bootable USB drive using the `mkbootdisk` command.

First, let's identify the USB drive that you want to use. You can use the `lsblk` command to list all the block devices connected to your system:

```bash
lsblk
```

Example output:

```
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 465.8G  0 disk
├─sda1   8:1    0   512M  0 part /boot/efi
└─sda2   8:2    0 465.3G  0 part /
sdb      8:16   1   7.5G  0 disk
```

In the example output, the USB drive is identified as `sdb` with a size of 7.5GB.

Now, let's create a bootable USB drive using the `mkbootdisk` command:

```bash
sudo mkbootdisk --iso /path/to/linux.iso /dev/sdb
```

Replace `/path/to/linux.iso` with the actual path to the Linux ISO image you want to use, and `/dev/sdb` with the appropriate device name for your USB drive.

Example output:

```
Checking for required utilities...
Preparing bootable USB drive...
Copying ISO image to USB drive...
Bootable USB drive created successfully.
```

Once the process is complete, you can use the bootable USB drive to install or troubleshoot a Linux distribution.
