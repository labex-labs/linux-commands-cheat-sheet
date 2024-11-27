# Understand the Purpose of the poweroff Command

In this step, you will learn about the purpose and usage of the `poweroff` command in Linux. The `poweroff` command is used to safely shut down the system and power it off.

The `poweroff` command is typically used to gracefully shut down the system, allowing all running processes to terminate properly and the file system to be properly unmounted. This helps prevent data loss or corruption that can occur from an abrupt power-off.

Let's start by running the `poweroff` command:

```bash
sudo poweroff
```

Example output:

```
Broadcast message from root@labex (pts/0) (Tue Apr 11 12:34:56 2023):

The system is going down for power off NOW!
```

After running the `poweroff` command, the system will begin the shutdown process and eventually power off the machine.
