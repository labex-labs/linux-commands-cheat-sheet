# Adjust Hardware Clock Manually

In this step, you will learn how to manually adjust the hardware clock on your Linux system.

First, let's check the current hardware clock time:

```bash
sudo hwclock
```

Example output:

```
2023-04-11 12:34:56.789012+0000
```

Suppose you need to adjust the hardware clock to a different time, for example, 2023-04-11 13:00:00. You can use the `hwclock` command with the `--set` option to manually set the hardware clock:

```bash
sudo hwclock --set --date="2023-04-11 13:00:00"
```

This command sets the hardware clock to the specified date and time.

To verify the updated hardware clock time, run the `hwclock` command again:

```bash
sudo hwclock
```

Example output:

```
2023-04-11 13:00:00.000000+0000
```

As you can see, the hardware clock has been adjusted to the new time.
