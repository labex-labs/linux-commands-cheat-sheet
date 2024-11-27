# Eject a CD/DVD Drive

In this step, you will learn how to eject a CD/DVD drive using the `eject` command.

First, let's insert a CD/DVD into your Docker container's CD/DVD drive. You can use the `lsblk` command to list all the block devices connected to your system, including the CD/DVD drive.

```
sudo lsblk
```

Example output:

```
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0   100G  0 disk
├─sda1   8:1    0    99G  0 part /
├─sda2   8:2    0     1K  0 part
└─sda5   8:5    0     1G  0 part [SWAP]
sr0     11:0    1  1024M  0 rom  /media/labex/DVDDRIVE
```

In the example output, you can see that the CD/DVD drive is assigned the device name `sr0`.

To eject the CD/DVD, use the `eject` command with the device path:

```
sudo eject /dev/sr0
```

Example output:

```
Ejecting /dev/sr0
```

After running the `eject` command, the CD/DVD should be safely ejected and can be removed from the container.
