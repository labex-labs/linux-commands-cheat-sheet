# Understand the Purpose of lsusb Command

In this step, we will understand the purpose and basic usage of the `lsusb` command in Linux. The `lsusb` command is a powerful tool that allows you to list information about the USB devices connected to your system.

The `lsusb` command provides the following key information about USB devices:

- Bus number and device number of the USB device
- Vendor ID and Product ID of the USB device
- Device class, subclass, and protocol information
- Detailed information about the USB device, such as the manufacturer, product name, and serial number

To run the `lsusb` command, simply execute the following in your terminal:

```
$ lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
```

Example output:

The output shows that there are several USB devices connected to the system, including root hubs for USB 2.0 and USB 3.0 interfaces.

In the next step, we will explore more advanced usage of the `lsusb` command to identify specific USB device information.
