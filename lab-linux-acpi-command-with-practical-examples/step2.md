# Monitoring Battery Status with acpi

In this step, you will learn how to use the `acpi` command to monitor the battery status of your system in more detail.

First, let's check the current battery status:

```bash
acpi -b
```

Example output:

```
Battery 0: Discharging, 93%, 02:41:13 remaining
```

The output shows the battery percentage, charging/discharging status, and the estimated remaining time.

You can also get more detailed information about the battery by using the `-i` option:

```bash
acpi -i
```

Example output:

```
Battery 0
  design capacity: 5900 mAh
  last full capacity: 5700 mAh
  battery technology: Li-ion
  design voltage: 11.1 V
  cycle count: 123
  condition: Good, 96.61% of design capacity
```

This output provides information about the battery's design capacity, last full capacity, technology, voltage, cycle count, and condition.

To get the battery status in a more machine-readable format, you can use the `-s` option:

```bash
acpi -s
```

Example output:

```
battery 0 Discharging 93% 02:41:13
```

This format can be useful for scripting or integrating the battery status information into other tools.

In the next step, you will learn how to customize the behavior of the `acpi` command.
