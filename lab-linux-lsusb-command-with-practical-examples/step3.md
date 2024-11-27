# Identify USB Device Information with lsusb

In this final step, we will learn how to use the `lsusb` command to identify detailed information about the USB devices connected to your system.

First, let's list all the USB devices connected to the system:

```
$ lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
```

This output shows the bus number, device number, vendor ID, and product ID for each USB device.

To get more detailed information about a specific USB device, we can use the `lsusb -v` command and provide the vendor and product ID. For example, to get information about a USB mouse with vendor ID 046d and product ID c077, we can run:

```
$ lsusb -v -d 046d:c077
Bus 001 Device 003: ID 046d:c077 Logitech, Inc. M105 Optical Mouse
    Device Descriptor:
      bLength                18
      bDescriptorType         1
      bcdUSB               2.00
      bDeviceClass            0 (Defined at Interface level)
      bDeviceSubClass         0
      bDeviceProtocol         0
      bMaxPacketSize0        64
      idVendor           0x046d Logitech, Inc.
      idProduct          0xc077 M105 Optical Mouse
      bcdDevice            1.00
      iManufacturer           1 Logitech
      iProduct                2 M105 Optical Mouse
      iSerial                 0
      bNumConfigurations      1
      [...]
```

This output provides detailed information about the USB mouse, including its device descriptor, configuration descriptor, and HID report descriptor.

By using the `lsusb` command with various options, you can effectively identify and troubleshoot USB device-related issues on your Linux system.
