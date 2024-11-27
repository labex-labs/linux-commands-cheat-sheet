# Introduction to the psnice Command

In this step, we will explore the `psnice` command in Linux, which is used to adjust the priority of running processes. The `psnice` command allows you to increase or decrease the priority of a process, which can be useful for managing system resources and optimizing performance.

First, let's check the current priority of a running process using the `ps` command:

```bash
ps -o pid,ni,cmd -p $(pgrep -n bash)
```

Example output:

```
  PID   NI CMD
 1234   0  /bin/bash
```

The `NI` column shows the nice value of the process, which ranges from -20 (highest priority) to 19 (lowest priority). The default nice value for new processes is 0.

Now, let's use the `psnice` command to increase the priority of the current bash process:

```bash
sudo psnice -n -5 -p $(pgrep -n bash)
```

This command sets the nice value of the current bash process to -5, which increases its priority.

Let's verify the change:

```bash
ps -o pid,ni,cmd -p $(pgrep -n bash)
```

Example output:

```
  PID   NI CMD
 1234  -5  /bin/bash
```

As you can see, the nice value of the bash process has been changed to -5, indicating a higher priority.
