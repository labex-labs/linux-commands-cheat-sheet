# Schedule a Shutdown at a Specific Time

In this step, we will learn how to schedule a system shutdown at a specific time using the `shutdown` command.

To schedule a shutdown at a specific time, you can use the `shutdown` command with the `[time]` argument. The time can be specified in various formats, such as a 24-hour time (e.g., `16:20`) or a delay in minutes (e.g., `+10`).

Here are some examples:

```
sudo shutdown 16:20     # Shut down the system at 4:20 PM
sudo shutdown +10       # Shut down the system in 10 minutes
```

You can also provide an optional message that will be displayed to all logged-in users before the shutdown occurs:

```
sudo shutdown 16:20 "System maintenance in progress, please save your work."
```

Example output:

```
Shutdown scheduled for Fri 2023-04-28 16:20:00 UTC, use 'shutdown -c' to cancel.
```

To cancel a scheduled shutdown, you can use the `shutdown -c` command:

```
sudo shutdown -c
```

This will cancel the scheduled shutdown.
