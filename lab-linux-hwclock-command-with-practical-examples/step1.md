# Understand the Purpose and Functionality of the hwclock Command

In this step, you will learn about the purpose and functionality of the `hwclock` command in Linux. The `hwclock` command is used to interact with the system's hardware clock, which is a battery-powered clock that keeps time even when the system is powered off.

The main purposes of the `hwclock` command are:

1. **Synchronize System Time with Hardware Clock**: You can use `hwclock` to set the system time based on the hardware clock, or to set the hardware clock based on the system time.
2. **Adjust Hardware Clock Manually**: You can use `hwclock` to manually adjust the hardware clock, which can be useful if the clock is drifting or needs to be set to a specific time.

Let's start by checking the current hardware clock time:

```bash
sudo hwclock
```

Example output:

```
2023-04-11 12:34:56.789012+0000
```

This command displays the current time stored in the system's hardware clock. The time is shown in the format `YYYY-MM-DD HH:MM:SS.UUUUUU±TTTT`, where `YYYY-MM-DD` is the date, `HH:MM:SS.UUUUUU` is the time, and `±TTTT` is the time zone offset.

Now, let's synchronize the system time with the hardware clock:

```bash
sudo hwclock --systohc
```

This command sets the system time to match the hardware clock.
