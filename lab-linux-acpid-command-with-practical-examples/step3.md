# Create Custom acpid Event Handlers

In this final step, we will create a custom acpid event handler to demonstrate how you can extend the functionality of the acpid daemon.

Let's create a new event handler to monitor the battery level and perform an action when the battery drops below a certain threshold.

First, create the event handler file:

```bash
sudo nano /etc/acpi/events/low-battery
```

Add the following content to the file:

```
event=battery.*
action=/etc/acpi/actions/low-battery.sh
```

This event handler will execute the `/etc/acpi/actions/low-battery.sh` script whenever the battery level changes.

Next, create the `low-battery.sh` script:

```bash
sudo nano /etc/acpi/actions/low-battery.sh
```

Add the following content to the script:

```bash
#!/bin/bash

BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+%' | head -n 1 | sed 's/%//')

if [ "$BATTERY_LEVEL" -lt 20 ]; then
  logger "Battery level below 20%, sending notification..."
  notify-send "Low Battery" "Battery level is below 20%."
fi
```

This script checks the current battery level using the `acpi` command. If the battery level is below 20%, it logs a message to the system log and sends a desktop notification.

Make the script executable:

```bash
sudo chmod +x /etc/acpi/actions/low-battery.sh
```

Now, let's test the low-battery event handler by discharging the battery on your laptop. When the battery level drops below 20%, you should see the notification appear on your desktop.
