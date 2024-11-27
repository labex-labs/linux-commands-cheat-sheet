# Understand the timedatectl Command

In this step, you will learn about the `timedatectl` command, which is used to manage the system date and time settings in Linux.

The `timedatectl` command is part of the systemd suite of tools, and it provides a convenient way to view and modify the system's date, time, and time zone settings.

Let's start by checking the current system date and time using the `timedatectl` command:

```bash
timedatectl
```

Example output:

```
               Local time: Wed 2023-04-12 10:30:00 UTC
           Universal time: Wed 2023-04-12 10:30:00 UTC
                 RTC time: Wed 2023-04-12 10:30:00
                Time zone: UTC (UTC, +0000)
System clock synchronized: yes
              NTP service: active
          RTC in local TZ: no
```

This output shows the current local time, universal time (UTC), real-time clock (RTC) time, time zone, and the status of the system clock and NTP service.

Next, let's see how to change the system's time zone using `timedatectl`:

```bash
sudo timedatectl set-timezone America/New_York
```

This command sets the time zone to "America/New_York". You can use the `timedatectl list-timezones` command to see a list of available time zones.
