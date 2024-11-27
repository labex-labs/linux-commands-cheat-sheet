# Safely Shut Down the System Using the poweroff Command

In this step, you will learn how to safely shut down the system using the `poweroff` command.

The `poweroff` command is the recommended way to shut down a Linux system, as it ensures that all running processes are terminated gracefully and the file system is properly unmounted before the power is turned off.

Let's try shutting down the system using the `poweroff` command:

```bash
sudo poweroff
```

Example output:

```
Broadcast message from root@labex (pts/0) (Tue Apr 11 12:34:56 2023):

The system is going down for power off NOW!
```

After running the `poweroff` command, the system will begin the shutdown process and eventually power off the machine.
