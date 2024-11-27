# Eject a Removable Media Device

In this step, you will learn how to eject a removable media device, such as a USB drive, using the `eject` command.

First, let's insert a USB drive into your Docker container. You can use the `lsblk` command to list all the block devices connected to your system, including the USB drive.

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
sdb      8:16   1   7.5G  0 disk
└─sdb1   8:17   1   7.5G  0 part /media/labex/MYUSB
```

In the example output, you can see that the USB drive is assigned the device name `sdb1`.

To eject the USB drive, use the `eject` command with the device path:

```
sudo eject /dev/sdb1
```

Example output:

```
Ejecting /dev/sdb1
```

After running the `eject` command, the USB drive should be safely ejected and can be removed from the container.
