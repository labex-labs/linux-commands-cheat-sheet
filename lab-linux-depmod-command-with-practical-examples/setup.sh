#!/bin/bash

# Understand the Purpose of the depmod Command
sudo depmod
cat /lib/modules/5.15.0-1023-aws/modules.dep

# Explore the Dependency Tree of Kernel Modules
modinfo -F depends kernel/drivers/acpi/acpi_power_meter.ko
modinfo -F depends kernel/drivers/acpi/acpi_thermal_rel.ko
modinfo -F depends kernel/drivers/acpi/apei/ghes.ko
modinfo -F depends kernel/drivers/acpi/apei/erst-lib.ko