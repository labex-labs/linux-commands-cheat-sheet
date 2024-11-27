# Introduction to the acpi Command

In this step, you will learn about the `acpi` command, which is a utility that provides information about the Advanced Configuration and Power Interface (ACPI) on your system. ACPI is a standard for power management in modern computers.

First, let's check if the `acpi` command is installed on your system:

```bash
which acpi
```

Example output:

```
/usr/bin/acpi
```

If the command is not found, you can install it using the following command:

```bash
sudo apt-get update
sudo apt-get install -y acpi
```

Now, let's run the `acpi` command to see the basic information it provides:

```bash
acpi
```

Example output:

```
Battery 0: Discharging, 93%, 02:41:13 remaining
Thermal 0: ok, 45.0 degrees C
```

The output shows the battery status and the current temperature of the system.

You can also use the `acpi` command with various options to get more detailed information. For example, to get information about the battery status only, you can use the `-b` option:

```bash
acpi -b
```

Example output:

```
Battery 0: Discharging, 93%, 02:41:13 remaining
```

In the next step, you will learn how to use the `acpi` command to monitor the battery status in more detail.
