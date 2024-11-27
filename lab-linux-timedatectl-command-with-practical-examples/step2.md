# Manage System Date and Time with timedatectl

In this step, you will learn how to manage the system date and time using the `timedatectl` command.

First, let's check the current system date and time:

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

To change the system date, use the `timedatectl set-time` command:

```bash
sudo timedatectl set-time "2023-04-13 12:00:00"
```

This command sets the system date and time to April 13, 2023, at 12:00:00.

You can also set the system time relative to the current time using the `+` or `-` operators:

```bash
sudo timedatectl set-time "+1 hour"
sudo timedatectl set-time "-1 day"
```

These commands will add one hour or subtract one day from the current system time, respectively.
