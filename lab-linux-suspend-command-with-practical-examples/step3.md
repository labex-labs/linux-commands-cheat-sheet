# Manage Power States with the suspend Command

In this step, we will explore how to manage the different power states of the system using the `suspend` command.

First, let's check the current power state of the system:

```bash
sudo systemctl status suspend.target
```

Example output:

```
● suspend.target - Suspend
     Loaded: loaded (/usr/lib/systemd/system/suspend.target; static; vendor preset: enabled)
     Active: inactive (dead)
```

The output shows that the system is currently in the "inactive" state, meaning it is not in the Suspend to RAM (S3) state.

To put the system into the Suspend to RAM (S3) state, use the following command:

```bash
sudo systemctl suspend
```

Example output:

```
[sudo] password for labex:
```

The system is now in the Suspend to RAM (S3) state. To resume the system, simply press the power button or any other key on the keyboard.

You can also put the system into the Suspend to Disk (S4) state using the `systemctl hibernate` command:

```bash
sudo systemctl hibernate
```

Example output:

```
[sudo] password for labex:
```

The system is now in the Suspend to Disk (S4) state. To resume the system, press the power button.

Additionally, you can use the `pm-suspend` and `pm-hibernate` commands to manage the power states:

```bash
sudo pm-suspend
```

```bash
sudo pm-hibernate
```

These commands provide more fine-grained control over the power management process, but the `systemctl suspend` and `systemctl hibernate` commands are generally more convenient to use.
