# Customizing acpi Behavior

In this step, you will learn how to customize the behavior of the `acpi` command to suit your needs.

The `acpi` command reads its configuration from the `/etc/acpi/` directory. Let's create a custom configuration file to customize the command's behavior.

First, create a new file in the `/etc/acpi/` directory:

```bash
sudo nano /etc/acpi/custom.sh
```

In this file, you can add custom scripts or configuration options for the `acpi` command. For example, you can create a script to display the battery status in a specific format:

```bash
#!/bin/bash

battery_status=$(acpi -b)
battery_percent=$(echo "$battery_status" | awk -F'[,,%]' '{print $2}')
battery_time=$(echo "$battery_status" | awk -F'[,]' '{print $3}')

echo "Battery: $battery_percent% ($battery_time remaining)"
```

Save the file and make it executable:

```bash
sudo chmod +x /etc/acpi/custom.sh
```

Now, you can run the `acpi` command with the `-c` option to use the custom configuration:

```bash
acpi -c
```

Example output:

```
Battery: 93% (02:41:13 remaining)
```

You can also customize the `acpi` command to perform specific actions based on the battery status. For example, you can create a script to automatically suspend the system when the battery level reaches a certain threshold.

In the next step, you will learn how to verify the customizations you've made to the `acpi` command.
