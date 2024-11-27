# Understand the Linux suspend Command

In this step, we will explore the Linux `suspend` command, which allows you to suspend the system to RAM or disk. The `suspend` command puts the system into a low-power state, preserving the current state of the system in memory or on disk, so that you can quickly resume your work later.

First, let's understand the different power states available in Linux:

- **Suspend to RAM (S3)**: In this state, the system's RAM is kept powered on, allowing for a quick resume, but the CPU and other components are powered down. This is the fastest way to resume the system.
- **Suspend to Disk (S4)** (also known as Hibernate): In this state, the system's state is saved to the disk, and the system is powered off completely. This takes longer to resume, but it preserves the system state even when the power is lost.

Now, let's explore how to use the `suspend` command:

```bash
sudo systemctl suspend
```

Example output:

```
[sudo] password for labex:
```

The `systemctl suspend` command puts the system into the Suspend to RAM (S3) state.

To suspend the system to disk (hibernate), use the following command:

```bash
sudo systemctl hibernate
```

Example output:

```
[sudo] password for labex:
```

The `systemctl hibernate` command puts the system into the Suspend to Disk (S4) state.

To resume the system from a suspended state, simply press the power button or any other key on the keyboard.
