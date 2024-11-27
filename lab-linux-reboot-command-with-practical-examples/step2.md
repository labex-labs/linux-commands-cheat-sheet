# Reboot the System Immediately

In this step, we will learn how to immediately reboot the system using the `reboot` command.

First, let's verify the current system uptime:

```bash
uptime
```

Example output:

```
 12:34:56 up 1 day, 12:34,  0 users,  load average: 0.00, 0.01, 0.05
```

Now, let's reboot the system immediately using the `reboot` command:

```bash
sudo reboot
```

Example output:

```
Broadcast message from root@labex (pts/0) (Fri Apr 14 12:34:56 2023):

The system is going down for reboot NOW!
```

After executing the `reboot` command, the system will immediately start the reboot process. Once the reboot is complete, you will be able to log back into the system.
