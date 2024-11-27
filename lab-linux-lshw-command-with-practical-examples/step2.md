# Explore System Hardware Information Using lshw

In this step, you will learn how to use the `lshw` command to explore more detailed hardware information about your system.

The `lshw` command provides a wide range of options to customize the output and focus on specific hardware components. Let's start by exploring the basic options:

```bash
# Display a concise summary of hardware information
sudo lshw -short

# Display detailed information about all hardware components
sudo lshw

# Display information about a specific hardware class, such as network, disk, or memory
sudo lshw -class network
sudo lshw -class disk
sudo lshw -class memory
```

Example output for `sudo lshw -short`:

```
H/W path       Device     Class          Description
========================================================
                         system         Virtual Machine
/0                       bus            Google
/0/1                     memory         16GiB
/0/100                   processor      Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz
/0/100/2                 memory         16GiB
/0/100/2/0               memory         16GiB
/0/100/14                network        Ethernet interface
/0/100/1d               bus            USB controller
/0/100/1d/1             input          USB device
/0/100/1d/2             storage        USB device
```

The `lshw -short` command provides a concise summary of the hardware components, while the `lshw` command without any options displays the full, detailed information.

You can also use the `-class` option to focus on a specific hardware component, such as network, disk, or memory. This can be helpful when you need to quickly gather information about a particular hardware subsystem.

In the next step, you will learn how to customize the `lshw` output and save the information to a file for further analysis.
