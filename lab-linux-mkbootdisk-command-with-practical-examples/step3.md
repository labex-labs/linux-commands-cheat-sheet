# Troubleshoot Issues with Bootable USB Drive

In this step, you will learn how to troubleshoot common issues that may arise when creating a bootable USB drive using the `mkbootdisk` command.

One common issue is that the USB drive may not be recognized as a bootable device. This can happen if the USB drive was not properly formatted or if the `mkbootdisk` command failed to write the necessary boot files to the drive.

To troubleshoot this issue, you can try the following steps:

1. Check the USB drive's file system:

   ```bash
   sudo fdisk -l /dev/sdb
   ```

   This command will display information about the USB drive's partitions and file system. Ensure that the file system is in a format that is compatible with your computer's BIOS or UEFI settings.

2. Verify the USB drive's boot files:

   ```bash
   sudo dd if=/dev/sdb of=/dev/null bs=512 count=1
   ```

   This command will read the first 512 bytes of the USB drive, which should contain the boot sector. If the command fails, it may indicate that the boot files were not written correctly.

3. Check the BIOS or UEFI settings:

   Ensure that your computer's BIOS or UEFI settings are configured to boot from the USB drive. You may need to enter the BIOS or UEFI setup menu and change the boot order or enable USB boot support.

If you continue to experience issues with the bootable USB drive, you can try the following additional troubleshooting steps:

- Use a different USB drive or a different ISO image.
- Verify the integrity of the ISO image using a checksum tool.
- Try creating the bootable USB drive on a different computer.

Remember, the specific troubleshooting steps may vary depending on your hardware and the Linux distribution you are using.
