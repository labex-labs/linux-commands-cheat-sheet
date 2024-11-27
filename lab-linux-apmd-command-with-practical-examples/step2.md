# Monitoring Battery Status with apmd

In this step, you will learn how to use the `apmd` command to monitor the battery status of your system.

First, let's check the current battery status using the `apmd` command:

```bash
sudo apmd -s
```

Example output:

```
ACPI Power Management Daemon version 3.2.2
Battery status:
  Battery 0: charged, 100% remaining
```

The output shows the current battery status, including the battery percentage and charging/discharging state.

You can also use the `apmd` command to display more detailed information about the battery:

```bash
sudo apmd -d
```

Example output:

```
ACPI Power Management Daemon version 3.2.2
Battery status:
  Battery 0: charged, 100% remaining
  Design capacity: 5000 mAh
  Last full capacity: 5000 mAh
  Battery technology: rechargeable
  Battery voltage: 12.6 V
  Battery current: 0 mA
  Battery temperature: 25.0 C
```

This command provides more detailed information about the battery, including the design capacity, last full capacity, voltage, current, and temperature.

You can also use the `apmd` command to monitor the battery status in real-time. To do this, run the following command:

```bash
sudo apmd -m
```

This command will continuously monitor the battery status and display any changes in the battery level or charging/discharging state.
