# Understand the lshw Command and Its Purpose

In this step, you will learn about the `lshw` (List Hardware) command and its purpose. The `lshw` command is a powerful tool in Linux that provides detailed information about the hardware components of your system.

The `lshw` command can be used to gather information about various hardware components, such as:

- CPU
- Memory
- Motherboard
- Disk drives
- Network interfaces
- USB devices
- PCI devices
- and more

To get started, let's run the `lshw` command in the terminal:

```bash
sudo lshw
```

Example output:

```
*-core
     description: Motherboard
     product: Virtual Machine
     vendor: Google
     physical id: 0
     version: None
     serial: None
     slot: None
   *-firmware
        description: BIOS
        vendor: Google
        physical id: 0
        version: Google
        date: 04/01/2014
   *-cpu
        description: CPU
        product: Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz
        vendor: Intel Corp.
        physical id: cpu
        bus info: cpu@0
        version: Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz
        serial: None
        slot: LGA1151
        size: 3700MHz
        capacity: 4800MHz
        width: 64 bits
        clock: 100MHz
   *-memory
        description: System Memory
        physical id: 1
        slot: System board or motherboard
        size: 16GiB
```

As you can see, the `lshw` command provides a detailed overview of the hardware components in your system. This information can be useful for troubleshooting hardware-related issues, understanding your system's capabilities, and more.

In the next step, you will explore how to use the `lshw` command to gather more specific hardware information.
