# Practical Examples of using nice

In this final step, we will explore some practical examples of using the `nice` command.

## Prioritizing a CPU-intensive Task

Imagine you have a CPU-intensive task that you want to run in the background without affecting the performance of your system. You can use the `nice` command to lower the priority of this task:

```bash
# Run a CPU-intensive task with a niceness value of 10
nice -n 10 python3 cpu_intensive.py &
```

In this example, we're running a Python script called `cpu_intensive.py` with a niceness value of 10, which means it will have a lower priority than other processes on the system.

## Prioritizing an I/O-bound Task

If you have an I/O-bound task, such as a file transfer or a backup operation, you can use the `nice` command to increase the priority of this task:

```bash
# Run an I/O-bound task with a niceness value of -5
nice -n -5 rsync -aAXv /source /destination &
```

In this example, we're using the `rsync` command to perform a file transfer with a niceness value of -5, which means it will have a higher priority than other processes on the system.

## Prioritizing a Background Task

If you have a background task that you want to run without affecting the performance of your system, you can use the `nice` command to lower the priority of this task:

```bash
# Run a background task with a niceness value of 5
nice -n 5 ./background_script.sh &
```

In this example, we're running a script called `background_script.sh` with a niceness value of 5, which means it will have a lower priority than other processes on the system.
