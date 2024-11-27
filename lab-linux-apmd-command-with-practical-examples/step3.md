# Configuring apmd for Automated Power Management

In this step, you will learn how to configure the `apmd` command to automatically manage the power settings of your system.

The `apmd` command can be configured by editing the `/etc/apm/event.d/default.script` file. This file contains a set of scripts that are executed when specific power events occur, such as the battery level reaching a certain threshold or the system entering a low-power state.

Let's start by opening the default script file:

```bash
sudo nano /etc/apm/event.d/default.script
```

Inside the file, you can find various sections that correspond to different power events. For example, the following section handles the low battery event:

```bash
# Low battery event
on battery-low
    logger "ACPI event: battery low"
    # Add your custom actions here
end
```

You can customize this section to perform actions when the battery level is low, such as suspending the system or triggering a shutdown.

As an example, let's configure the `apmd` command to automatically suspend the system when the battery level reaches 20%:

```bash
# Low battery event
on battery-low
    logger "ACPI event: battery low"
    if [ "$(sudo apmd -s | grep -o -E '[0-9]+%')" = "20%" ]; then
        logger "Suspending system due to low battery"
        sudo systemctl suspend
    fi
end
```

In this example, the `apmd -s` command is used to check the current battery level, and if it is 20% or lower, the system is suspended using the `systemctl suspend` command.

Save the changes to the file and exit the text editor.

Now, the `apmd` command is configured to automatically manage the power settings of your system based on the battery level.
