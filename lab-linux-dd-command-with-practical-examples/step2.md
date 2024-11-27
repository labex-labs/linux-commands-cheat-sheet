# Create a Backup Image of a USB Drive

In this step, we will create a backup image of a USB drive using the `dd` command.

First, let's identify the USB drive device. You can use the `lsblk` command to list all block devices connected to your system:

```
sudo lsblk
```

Look for the device that corresponds to your USB drive, typically named `/dev/sdb` or similar.

Now, let's create a backup image of the USB drive:

```
sudo dd if=/dev/sdb of=~/project/usb_backup.img bs=4M status=progress
```

This command creates a backup image file named `usb_backup.img` in the `~/project` directory. The `bs=4M` option sets the block size to 4 MB, and `status=progress` displays the progress of the copy operation.

Example output:

```
4096000000 bytes (4.1 GB, 3.8 GiB) copied, 180.104 s, 22.7 MB/s
```

The output shows that 4.1 GB of data was copied from the USB drive to the backup image file, and the copy operation took 180 seconds with a transfer rate of 22.7 MB/s.
