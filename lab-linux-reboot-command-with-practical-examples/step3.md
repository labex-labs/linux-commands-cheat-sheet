# Schedule a Reboot at a Specific Time

In this step, we will learn how to schedule a system reboot at a specific time using the `shutdown` command.

The `shutdown` command is used to shut down or reboot the system, and it can be used to schedule a reboot at a specific time. Let's explore how to use it:

```bash
sudo shutdown -r +5
```

This command will schedule a reboot in 5 minutes. You can replace `+5` with a specific time, such as `16:30` to reboot the system at 4:30 PM.

To cancel a scheduled reboot, you can use the following command:

```bash
sudo shutdown -c
```

This will cancel the scheduled reboot.

Let's try scheduling a reboot in 1 minute and then canceling it:

```bash
sudo shutdown -r +1
```

Example output:

```
Broadcast message from root@labex (pts/0) (Fri Apr 14 12:34:56 2023):

The system is going down for reboot in 1 minute!
```

After 1 minute, the system will reboot. However, let's cancel the scheduled reboot:

```bash
sudo shutdown -c
```

Example output:

```
Broadcast message from root@labex (pts/0) (Fri Apr 14 12:34:56 2023):

The system shutdown has been cancelled.
```

Now, the scheduled reboot has been canceled, and the system will not reboot.
