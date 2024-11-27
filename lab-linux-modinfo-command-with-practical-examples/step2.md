# Explore Module Information Using modinfo

In this step, we will dive deeper into using the `modinfo` command to explore detailed information about kernel modules.

First, let's list all the kernel modules currently loaded on our system:

```bash
sudo modinfo -F filename -a
```

Example output:

```
/lib/modules/5.15.0-1023-aws/kernel/drivers/acpi/acpi_power_meter.ko
/lib/modules/5.15.0-1023-aws/kernel/drivers/acpi/acpi_thermal_rel.ko
/lib/modules/5.15.0-1023-aws/kernel/drivers/acpi/battery.ko
/lib/modules/5.15.0-1023-aws/kernel/drivers/acpi/button.ko
/lib/modules/5.15.0-1023-aws/kernel/drivers/acpi/ec_sys.ko
/lib/modules/5.15.0-1023-aws/kernel/drivers/acpi/fan.ko
/lib/modules/5.15.0-1023-aws/kernel/drivers/acpi/video.ko
```

The `-F filename` option tells `modinfo` to only display the filename of the modules, and the `-a` option lists all the modules.

Now, let's explore the details of a specific module, such as the `ext4` module:

```bash
sudo modinfo ext4
```

Example output:

```
filename:       /lib/modules/5.15.0-1023-aws/kernel/fs/ext4/ext4.ko
author:         Remy Card, Stephen Tweedie, Andrew Morton, Jakub Jelinek, et al.
description:    Fourth Extended Filesystem
license:        GPL
alias:          fs-ext4
alias:          ext4
alias:          ext3
alias:          ext2
depends:        mbcache,jbd2
retpoline:      Y
name:           ext4
vermagic:       5.15.0-1023-aws SMP mod_unload modversions
parm:           abort:behaviour when a metadata write fails (int)
parm:           barrier:default barrier usage (int)
parm:           dioread_nolock:use delalloc with no lock (int)
parm:           max_dir_size_kb:max size of directories (unsigned long)
parm:           min_batch_time:min time between delayed allocation attempts (us) (int)
parm:           max_batch_time:max time between delayed allocation attempts (us) (int)
```

This output provides detailed information about the `ext4` module, including the filename, author, description, license, aliases, dependencies, and various parameters that can be configured.

You can use the `modinfo` command to explore information about any kernel module installed on your system. This can be helpful when troubleshooting issues related to kernel modules or when trying to understand the functionality and configuration options of a specific module.
