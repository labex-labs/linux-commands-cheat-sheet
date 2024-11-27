# Understand the acpid Command and Its Purpose

In this step, we will explore the acpid (Advanced Configuration and Power Interface daemon) command and understand its purpose in Linux systems.

The acpid command is a daemon that listens for ACPI events and executes scripts in response to those events. ACPI (Advanced Configuration and Power Interface) is a standard that defines how the operating system can interact with the hardware, particularly in power management and thermal control.

The acpid daemon is responsible for monitoring and responding to various power-related events, such as laptop lid closing, system suspend/resume, and power button presses. It allows you to customize the system's behavior based on these events.

Let's start by checking the status of the acpid service:

```bash
sudo systemctl status acpid
```

Example output:

```
● acpid.service - ACPI Event Daemon
     Loaded: loaded (/lib/systemd/system/acpid.service; enabled; vendor preset: enabled)
     Active: active (running) since Mon 2023-04-24 12:34:56 UTC; 1 day 2h ago
   Main PID: 456 (acpid)
     Tasks: 1 (limit: 4915)
    Memory: 1.1M
    CGroup: /system.slice/acpid.service
            └─456 /usr/sbin/acpid -c /etc/acpi/events -s /var/run/acpid.socket
```

The output shows that the acpid service is running and enabled to start automatically on system boot.

Next, let's explore the default event handlers provided by the acpid service. The event handlers are defined in the `/etc/acpi/events/` directory:

```bash
ls -l /etc/acpi/events/
```

Example output:

```
-rw-r--r-- 1 root root 75 Apr 24 12:34 default
-rw-r--r-- 1 root root 75 Apr 24 12:34 power-button
```

The `default` and `power-button` event handlers are provided by default. You can customize these event handlers or create new ones to suit your specific needs.

Now, let's take a look at the contents of the `power-button` event handler:

```bash
cat /etc/acpi/events/power-button
```

Example output:

```
event=button/power.*
action=/etc/acpi/actions/power-button.sh
```

This event handler specifies that when the power button is pressed, the `/etc/acpi/actions/power-button.sh` script will be executed.

In the next step, we will learn how to configure acpid to monitor power events and create custom event handlers.
