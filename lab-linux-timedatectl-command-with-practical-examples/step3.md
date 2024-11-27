# Configure Time Zone and NTP Settings

In this step, you will learn how to configure the time zone and Network Time Protocol (NTP) settings using the `timedatectl` command.

First, let's list the available time zones:

```bash
timedatectl list-timezones
```

This will display a long list of available time zones. You can use this list to find the appropriate time zone for your system.

To set the time zone, use the `timedatectl set-timezone` command:

```bash
sudo timedatectl set-timezone America/Los_Angeles
```

This sets the time zone to "America/Los_Angeles".

Next, let's configure the NTP settings. By default, the system should be using the NTP service to synchronize the system clock. You can check the status of the NTP service using the `timedatectl` command:

```bash
timedatectl
```

The output should show that the "NTP service" is "active".

If the NTP service is not active, you can enable it using the following command:

```bash
sudo timedatectl set-ntp true
```

This command enables the NTP service and starts synchronizing the system clock with NTP servers.
