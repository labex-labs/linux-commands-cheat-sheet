# Suspend and Resume the System Using the suspend Command

In this step, we will learn how to suspend and resume the system using the `suspend` command.

First, let's suspend the system to RAM:

```bash
sudo systemctl suspend
```

Example output:

```
[sudo] password for labex:
```

The system is now in the Suspend to RAM (S3) state. To resume the system, simply press the power button or any other key on the keyboard.

Next, let's suspend the system to disk (hibernate):

```bash
sudo systemctl hibernate
```

Example output:

```
[sudo] password for labex:
```

The system is now in the Suspend to Disk (S4) state. To resume the system, press the power button.

You can also use the `pm-suspend` and `pm-hibernate` commands to suspend and hibernate the system, respectively. These commands are part of the `pm-utils` package, which provides a set of tools for power management.

```bash
sudo pm-suspend
```

Example output:

```
[sudo] password for labex:
```

```bash
sudo pm-hibernate
```

Example output:

```
[sudo] password for labex:
```

The `pm-suspend` and `pm-hibernate` commands provide more fine-grained control over the power management process, but the `systemctl suspend` and `systemctl hibernate` commands are generally more convenient to use.
