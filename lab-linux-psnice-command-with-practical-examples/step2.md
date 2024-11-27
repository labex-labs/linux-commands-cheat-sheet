# Adjusting Process Priority with psnice

In this step, we will learn how to use the `psnice` command to adjust the priority of running processes.

First, let's start a new process that runs indefinitely:

```bash
sleep 1000 &
```

This will start a `sleep` process that runs for 1000 seconds in the background.

Now, let's check the priority of the `sleep` process:

```bash
ps -o pid,ni,cmd -p $(pgrep -n sleep)
```

Example output:

```
  PID   NI CMD
 1235   0 sleep 1000
```

As you can see, the `sleep` process has a nice value of 0, which is the default priority.

Let's decrease the priority of the `sleep` process using the `psnice` command:

```bash
sudo psnice -n 5 -p $(pgrep -n sleep)
```

This command sets the nice value of the `sleep` process to 5, which decreases its priority.

Verify the change:

```bash
ps -o pid,ni,cmd -p $(pgrep -n sleep)
```

Example output:

```
  PID   NI CMD
 1235   5 sleep 1000
```

Now, let's increase the priority of the `sleep` process:

```bash
sudo psnice -n -5 -p $(pgrep -n sleep)
```

This command sets the nice value of the `sleep` process to -5, which increases its priority.

Verify the change:

```bash
ps -o pid,ni,cmd -p $(pgrep -n sleep)
```

Example output:

```
  PID   NI CMD
 1235  -5 sleep 1000
```

As you can see, we have successfully adjusted the priority of the `sleep` process using the `psnice` command.
