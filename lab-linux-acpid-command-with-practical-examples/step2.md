# Configure acpid to Monitor Power Events

In this step, we will configure the acpid daemon to monitor power events and learn how to create custom event handlers.

First, let's create a new event handler to monitor the laptop lid closing event:

```bash
sudo nano /etc/acpi/events/lid-close
```

Add the following content to the file:

```
event=button/lid.*
action=/etc/acpi/actions/lid-close.sh
```

This event handler will execute the `/etc/acpi/actions/lid-close.sh` script whenever the laptop lid is closed.

Next, create the `lid-close.sh` script:

```bash
sudo nano /etc/acpi/actions/lid-close.sh
```

Add the following content to the script:

```bash
#!/bin/bash
logger "Laptop lid closed, suspending system..."
/usr/sbin/pm-suspend
```

This script logs a message to the system log and then suspends the system when the laptop lid is closed.

Make the script executable:

```bash
sudo chmod +x /etc/acpi/actions/lid-close.sh
```

Now, let's test the lid-close event handler by closing the laptop lid. You should see the system suspend after a few seconds.

To resume the system, simply open the laptop lid.
