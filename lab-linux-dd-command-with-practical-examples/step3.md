# Restore a Backup Image to a USB Drive

In this step, we will restore the backup image of the USB drive that we created in the previous step.

First, let's identify the USB drive device again using the `lsblk` command:

```
sudo lsblk
```

Look for the device that corresponds to your USB drive, typically named `/dev/sdb` or similar.

Now, let's restore the backup image to the USB drive:

```
sudo dd if=~/project/usb_backup.img of=/dev/sdb bs=4M status=progress
```

This command restores the `usb_backup.img` file to the USB drive device `/dev/sdb`. The `bs=4M` option sets the block size to 4 MB, and `status=progress` displays the progress of the restore operation.

Example output:

```
4096000000 bytes (4.1 GB, 3.8 GiB) copied, 180.104 s, 22.7 MB/s
```

The output shows that 4.1 GB of data was copied from the backup image file to the USB drive, and the restore operation took 180 seconds with a transfer rate of 22.7 MB/s.

After the restore operation is complete, you can verify the contents of the USB drive to ensure the data has been restored correctly.
