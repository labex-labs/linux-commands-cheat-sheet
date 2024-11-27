# Kill Processes by User

In this step, you will learn how to use the `killall` command to terminate processes based on the user who owns them.

First, let's start some background processes as the `labex` user:

```bash
sudo -u labex sleep 1000 &
sudo -u labex sleep 2000 &
sudo -u labex sleep 3000 &
```

Now, you can use the `killall` command with the `-u` option to kill all processes owned by the `labex` user:

```bash
sudo killall -u labex
```

Example output:

```
sleep: no process found
```

Oops, it seems the `sleep` processes have already terminated. Let's start them again and try killing them:

```bash
sudo -u labex sleep 1000 &
sudo -u labex sleep 2000 &
sudo -u labex sleep 3000 &
sudo killall -u labex
```

Example output:

```
sleep: no process found
```

Great! The `killall` command with the `-u` option successfully terminated all processes owned by the `labex` user.

The `killall` command can be a powerful tool for managing processes based on the user who owns them. This can be especially useful in scenarios where you need to terminate all processes belonging to a specific user, such as when a user's account is being deactivated or the user is no longer authorized to run certain processes.
