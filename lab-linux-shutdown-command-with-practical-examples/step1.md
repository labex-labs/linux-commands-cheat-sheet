# Understand the Linux shutdown Command

In this step, we will explore the Linux `shutdown` command and understand its various options and usage.

The `shutdown` command is a powerful tool in Linux that allows you to shut down, reboot, or halt the system. It provides several options to control the shutdown process, such as scheduling a shutdown at a specific time or immediately shutting down the system.

Let's start by understanding the basic syntax of the `shutdown` command:

```
sudo shutdown [options] [time] [message]
```

Here's a breakdown of the different options:

- `[options]`: Specifies the action to be performed, such as shutting down, rebooting, or halting the system.
- `[time]`: Specifies the time when the shutdown should occur. This can be a specific time (e.g., `16:20`) or a delay in minutes (e.g., `+10`).
- `[message]`: Allows you to provide a message that will be displayed to all logged-in users before the shutdown occurs.

Now, let's explore some common `shutdown` command options:

```
sudo shutdown -h now      # Shut down the system immediately
sudo shutdown -r now     # Reboot the system immediately
sudo shutdown -h +10     # Shut down the system in 10 minutes
sudo shutdown -c         # Cancel a scheduled shutdown
```

Example output:

```
Shutdown scheduled for Fri 2023-04-28 12:00:00 UTC, use 'shutdown -c' to cancel.
```

In the next steps, we will cover more advanced usage of the `shutdown` command, including scheduling a shutdown at a specific time.
