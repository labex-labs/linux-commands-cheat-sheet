# Displaying System Hardware Information

In this step, we will use the `dmidecode` command to display detailed information about the hardware components of the system.

First, let's use the `dmidecode` command to display the overall system information:

```bash
sudo dmidecode -t system
```

Example output:

```
# dmidecode 3.3
Getting SMBIOS data from sysfs.
SMBIOS 3.2.0 present.

Handle 0x0001, DMI type 1, 27 bytes
System Information
        Manufacturer: VMware, Inc.
        Product Name: VMware Virtual Platform
        Version: None
        Serial Number: VMware-42 1d 93 c1 d1 2f 2a 19-5a 1c 4f 3b 6a 4f 9a 6d
        UUID: 421d93c1-d12f-2a19-5a1c-4f3b6a4f9a6d
        Wake-up Type: Power Switch
        SKU Number: Not Specified
        Family: Virtual Machine
```

This command provides information about the system manufacturer, product name, serial number, UUID, and other relevant details.

Next, let's display the information about the system's processor:

```bash
sudo dmidecode -t processor
```

Example output:

```
# dmidecode 3.3
Getting SMBIOS data from sysfs.
SMBIOS 3.2.0 present.

Handle 0x0003, DMI type 3, 21 bytes
Chassis Information
        Manufacturer: VMware, Inc.
        Type: Virtual Machine
        Lock: Not Present
        Version: None
        Serial Number: VMware-42 1d 93 c1 d1 2f 2a 19-5a 1c 4f 3b 6a 4f 9a 6d
        Asset Tag: Not Specified
        Boot-up State: Safe
        Power Supply State: Safe
        Thermal State: Safe
        Security Status: None
```

This command provides detailed information about the system's processor, including the manufacturer, model, speed, and other relevant details.

Finally, let's display the information about the system's memory:

```bash
sudo dmidecode -t memory
```

Example output:

```
# dmidecode 3.3
Getting SMBIOS data from sysfs.
SMBIOS 3.2.0 present.

Handle 0x0017, DMI type 17, 40 bytes
Memory Device
        Array Handle: 0x0016
        Error Information Handle: Not Provided
        Total Width: 64 bits
        Data Width: 64 bits
        Size: 16384 MB
        Form Factor: DIMM
        Set: None
        Locator: DIMM 0
        Bank Locator: DIMM 0
        Type: DDR4
        Type Detail: Synchronous
        Speed: 2400 MT/s
        Manufacturer: VMware
        Serial Number: VMware-42 1d 93 c1 d1 2f 2a 19-5a 1c 4f 3b 6a 4f 9a 6d
        Asset Tag: Not Specified
        Part Number: VMware Virtual RAM
        Rank: 2
        Configured Memory Speed: 2400 MT/s
```

This command provides detailed information about the system's memory, including the size, type, speed, and other relevant details.

The `dmidecode` command can be used to display a wide range of hardware information, and the specific information displayed will depend on the hardware configuration of the system.
