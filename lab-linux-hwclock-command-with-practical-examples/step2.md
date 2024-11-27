# Synchronize System Time with Hardware Clock

In this step, you will learn how to synchronize the system time with the hardware clock on your Linux system.

First, let's check the current system time:

```bash
date
```

Example output:

```
Tue Apr 11 12:34:56 UTC 2023
```

Now, let's synchronize the system time with the hardware clock:

```bash
sudo hwclock --systohc
```

This command sets the system time to match the hardware clock. You can verify the updated system time by running the `date` command again:

```bash
date
```

Example output:

```
Tue Apr 11 12:34:56 UTC 2023
```

As you can see, the system time now matches the hardware clock time.
