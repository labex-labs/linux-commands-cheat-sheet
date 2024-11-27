# Explore the Dependency Tree of Kernel Modules

In this step, you will learn how to explore the dependency tree of kernel modules using the `depmod` command.

First, let's list all the installed kernel modules on the system:

```bash
sudo modprobe -l
```

Example output:

```
kernel/drivers/acpi/acpi_power_meter.ko
kernel/drivers/acpi/acpi_thermal_rel.ko
kernel/drivers/acpi/apei/ghes.ko
kernel/drivers/acpi/apei/erst-lib.ko
...
```

To view the dependencies for a specific kernel module, you can use the `modinfo` command. For example, let's check the dependencies for the `acpi_power_meter` module:

```bash
sudo modinfo -d acpi_power_meter
```

Example output:

```
depends: acpi_ipmi
```

This output shows that the `acpi_power_meter` module depends on the `acpi_ipmi` module.

You can also use the `depmod` command to generate a more detailed dependency tree. The `depmod -n -a` command will display the dependency tree without actually loading the modules:

```bash
sudo depmod -n -a
```

Example output:

```
kernel/drivers/acpi/acpi_power_meter.ko:
 kernel/drivers/acpi/acpi_ipmi.ko

kernel/drivers/acpi/acpi_thermal_rel.ko:
 kernel/drivers/acpi/acpi_ipmi.ko

kernel/drivers/acpi/apei/ghes.ko:
 kernel/drivers/acpi/apei/apei-base.ko

kernel/drivers/acpi/apei/erst-lib.ko:
 kernel/drivers/acpi/apei/apei-base.ko
```

This output shows the full dependency tree for each kernel module, indicating which other modules need to be loaded for a particular module to function correctly.

Understanding the dependency tree of kernel modules is important when troubleshooting issues related to kernel modules, as you need to ensure that all the required dependencies are met.

In the next step, you will learn how to troubleshoot module dependencies using the `depmod` command.
