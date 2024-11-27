# Explore Basic Usage of lsusb Command

In this step, we will explore the basic usage of the `lsusb` command to retrieve more detailed information about the USB devices connected to your system.

First, let's use the `lsusb` command with the `-v` (verbose) option to display more detailed information about each USB device:

```
$ lsusb -v
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
[...]
```

The output now includes additional details such as the device class, subclass, protocol, and other information about each USB device.

You can also use the `lsusb` command to search for a specific USB device by its vendor and product ID. For example, to find information about a USB mouse, you can use the following command:

```
$ lsusb -d 046d:c077
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
      Configuration Descriptor:
        bLength                 9
        bDescriptorType         2
        wTotalLength           34
        bNumInterfaces          1
        bConfigurationValue     1
        iConfiguration          0
        bmAttributes         0x80
          (Bus Powered)
        MaxPower              100mA
        Interface Descriptor:
          bLength                 9
          bDescriptorType         4
          bInterfaceNumber        0
          bAlternateSetting       0
          bNumEndpoints           1
          bInterfaceClass         3 Human Interface Device
          bInterfaceSubClass      1 Boot Interface Subclass
          bInterfaceProtocol      2 Mouse
          iInterface              0
          HID Device Descriptor:
            bLength                 9
            bDescriptorType        33
            bcdHID               1.11
            bCountryCode            0 Not supported
            bNumDescriptors         1
            bDescriptorType        34 Report
            wDescriptorLength      71
          Report Descriptor: (length is 71)
            Item(Global): Usage Page, data= [ 0x01 ] 1 (Generic Desktop Controls)
            Item(Local): Usage, data= [ 0x02 ] 2 (Mouse)
            [...]
```

This command displays detailed information about the USB mouse, including its vendor and product ID, device class, and report descriptor.

By exploring the basic usage of the `lsusb` command, you can effectively identify and troubleshoot USB device-related issues on your Linux system.
