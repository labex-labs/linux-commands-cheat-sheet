# Shut Down the System Immediately

In this step, we will learn how to immediately shut down the system using the `shutdown` command.

To shut down the system immediately, we can use the `shutdown` command with the `-h` (halt) option and the `now` argument:

```
sudo shutdown -h now
```

This will immediately initiate the shutdown process, and the system will power off once the shutdown is complete.

Example output:

```
Shutdown scheduled for Fri 2023-04-28 12:00:00 UTC, use 'shutdown -c' to cancel.
```

You can also use the `poweroff` command, which is an alias for `shutdown -h now`:

```
sudo poweroff
```

This will have the same effect as using the `shutdown -h now` command.

If you need to cancel a scheduled shutdown, you can use the `shutdown -c` command:

```
sudo shutdown -c
```

This will cancel the scheduled shutdown.
