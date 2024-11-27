# Understand the reboot Command

In this step, we will explore the Linux `reboot` command and understand its usage. The `reboot` command is used to restart the system, which is a common task for system administrators and users.

First, let's check the manual page for the `reboot` command to understand its options and usage:

```bash
man reboot
```

The manual page provides information about the various options available with the `reboot` command, such as:

- `-f`: Force the reboot, even if system is not in a proper state.
- `-i`: Shut down all network interfaces before rebooting.
- `-p`: Halt the processor.
- `-w`: Only write a record of the reboot, but do not actually reboot.

Now, let's try running the `reboot` command without any options:

```bash
sudo reboot
```

Example output:

```
Broadcast message from root@labex (pts/0) (Fri Apr 14 12:34:56 2023):

The system is going down for reboot NOW!
```

As you can see, the system will immediately reboot after executing the `reboot` command.
