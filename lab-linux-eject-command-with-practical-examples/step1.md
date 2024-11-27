# Understand the Purpose of the eject Command

In this step, you will learn about the purpose and usage of the `eject` command in Linux. The `eject` command is used to eject removable media devices, such as CD/DVD drives, USB drives, and other types of removable storage.

The `eject` command can be used to:

- Eject a removable media device, such as a CD/DVD drive or a USB drive.
- Eject a CD or DVD from the optical drive.
- Unlock a device that has been locked by the system.

To use the `eject` command, simply run the following command in the terminal:

```
sudo eject [device]
```

Replace `[device]` with the path to the device you want to eject, such as `/dev/cdrom` for a CD/DVD drive or `/dev/sdb1` for a USB drive.

Example:

```
sudo eject /dev/cdrom
```

Example output:

```
Ejecting /dev/cdrom
```

The `eject` command can also be used without any arguments to eject the default removable media device, which is usually the CD/DVD drive.

```
sudo eject
```

Example output:

```
Ejecting /dev/cdrom
```
