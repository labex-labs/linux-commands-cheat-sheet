# Shut Down the System Using the halt Command

In this step, we will learn how to shut down the system using the `halt` command.

First, let's confirm the current system status:

```bash
uptime
```

Example output:

```
 12:34:56 up 1 day, 12:34,  0 users,  load average: 0.00, 0.01, 0.05
```

Now, let's shut down the system using the `halt` command:

```bash
sudo halt
```

Example output:

```
Broadcast message from root@labex (pts/0) (Fri Mar 31 12:34:56 2023):

The system is going down for halt NOW!
```

After executing the `halt` command, the system will begin the shutdown process. You should see the system powering off or entering a state where you can no longer interact with it.

To confirm that the system has been successfully shut down, you can try to log in or check the system status again. Since the system has been powered off, you should not be able to interact with it.
