# Explore lspci Command Options and Flags

In this step, we will explore the various options and flags available with the `lspci` command to retrieve more detailed information about the PCI devices on your system.

Let's start by checking the available options for the `lspci` command:

```bash
man lspci
```

This will display the manual page for the `lspci` command, which lists all the available options and their descriptions.

Some commonly used `lspci` options include:

- `-v`: Display verbose output, providing more detailed information about each PCI device.
- `-vv`: Display very verbose output, including additional technical details.
- `-s <slot>`: Display information only for the PCI device at the specified slot.
- `-d <vendor>:<device>`: Display information only for devices from the specified vendor and/or device ID.
- `-n`: Display the device and vendor IDs in numeric format instead of looking up the names.
- `-nn`: Display the device and vendor IDs in numeric format and also include the name lookups.

Let's try some of these options:

```bash
sudo lspci -v
```

Example output:

```
00:00.0 Host bridge: Intel Corporation 8th Gen Core Processor Host Bridge/DRAM Registers (rev 07)
    Subsystem: Lenovo 8th Gen Core Processor Host Bridge/DRAM Registers
    Flags: bus master, fast devsel, latency 0
    Capabilities: <access denied>
    Kernel driver in use: skl_uncore

00:01.0 PCI bridge: Intel Corporation Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor PCIe Controller (rev 07)
    Flags: bus master, fast devsel, latency 0, IRQ 122
    Bus: primary=00, secondary=01, subordinate=01, sec-latency=0
    I/O behind bridge: 0000c000-0000cfff
    Memory behind bridge: f6000000-f60fffff
    Prefetchable memory behind bridge: 00000000e0000000-00000000e01fffff
    Capabilities: <access denied>
    Kernel driver in use: pcieport
```

The `-v` option provides more detailed information about each PCI device, including the device name, vendor, capabilities, and the kernel driver in use.

You can also combine options to get even more specific information:

```bash
sudo lspci -nn
```

This will display the PCI device and vendor IDs in numeric format, along with the name lookups.

```bash
sudo lspci -s 00:02.0 -v
```

This will show the detailed information for the PCI device at slot `00:02.0`.

Explore the different `lspci` options and flags to understand how you can retrieve the specific information you need about the PCI devices on your system.
