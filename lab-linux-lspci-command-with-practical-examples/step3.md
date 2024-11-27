# Identify PCI Devices on the System

In this final step, we will learn how to use the `lspci` command to identify the PCI devices on your system and understand the information provided.

Let's start by running the basic `lspci` command again:

```bash
sudo lspci
```

Example output:

```
00:00.0 Host bridge: Intel Corporation 8th Gen Core Processor Host Bridge/DRAM Registers (rev 07)
00:01.0 PCI bridge: Intel Corporation Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor PCIe Controller (rev 07)
00:02.0 VGA compatible controller: Intel Corporation UHD Graphics 630 (rev 02)
00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB 3.1 xHCI Host Controller (rev 10)
00:14.2 RAM memory: Intel Corporation Cannon Lake PCH Shared SRAM (rev 10)
00:16.0 Communication controller: Intel Corporation Cannon Lake PCH HECI Controller (rev 10)
00:17.0 SATA controller: Intel Corporation Cannon Lake PCH SATA AHCI Controller (rev 10)
00:1b.0 PCI bridge: Intel Corporation Cannon Lake PCH PCI Express Root Port #21 (rev f0)
00:1c.0 PCI bridge: Intel Corporation Cannon Lake PCH PCI Express Root Port #1 (rev f0)
00:1d.0 PCI bridge: Intel Corporation Cannon Lake PCH PCI Express Root Port #13 (rev f0)
```

This output shows the various PCI devices detected on the system, including the host bridge, PCI bridges, VGA controller, USB controller, and more. Each line represents a PCI device, with information about its device ID, vendor, and other details.

To get more detailed information about a specific PCI device, you can use the `lspci -v` command:

```bash
sudo lspci -v -s 00:02.0
```

This will display the detailed information for the PCI device at slot `00:02.0`, which in this case is the VGA controller.

You can also use the `lspci -nn` command to see the numeric device and vendor IDs, which can be useful for identifying specific devices:

```bash
sudo lspci -nn
```

Example output:

```
00:00.0 Host bridge [0600]: Intel Corporation 8th Gen Core Processor Host Bridge/DRAM Registers [8086:3e30] (rev 07)
00:01.0 PCI bridge [0604]: Intel Corporation Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor PCIe Controller [8086:1901] (rev 07)
00:02.0 VGA compatible controller [0300]: Intel Corporation UHD Graphics 630 [8086:3e9b] (rev 02)
00:14.0 USB controller [0c03]: Intel Corporation Cannon Lake PCH USB 3.1 xHCI Host Controller [8086:a36d] (rev 10)
00:14.2 RAM memory [0500]: Intel Corporation Cannon Lake PCH Shared SRAM [8086:a36f] (rev 10)
00:16.0 Communication controller [0780]: Intel Corporation Cannon Lake PCH HECI Controller [8086:a360] (rev 10)
00:17.0 SATA controller [0106]: Intel Corporation Cannon Lake PCH SATA AHCI Controller [8086:a353] (rev 10)
00:1b.0 PCI bridge [0604]: Intel Corporation Cannon Lake PCH PCI Express Root Port #21 [8086:a344] (rev f0)
00:1c.0 PCI bridge [0604]: Intel Corporation Cannon Lake PCH PCI Express Root Port #1 [8086:a338] (rev f0)
00:1d.0 PCI bridge [0604]: Intel Corporation Cannon Lake PCH PCI Express Root Port #13 [8086:a33c] (rev f0)
```

This output shows the PCI device IDs in numeric format, which can be useful for identifying specific devices or looking up their specifications.

By using the `lspci` command with various options, you can gather detailed information about the PCI devices on your system, which can be valuable for troubleshooting, hardware identification, and understanding the overall system configuration.
