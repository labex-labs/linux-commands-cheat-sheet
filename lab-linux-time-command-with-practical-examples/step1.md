# Understand the time Command

In this step, you will learn about the `time` command in Linux, which is used to measure the execution time of a command or a script.

The `time` command provides information about the resources used by a program, including the elapsed real time, the user CPU time, and the system CPU time.

To use the `time` command, simply run it before the command you want to measure:

```bash
time command_to_measure
```

Here's an example:

```bash
time sleep 2
```

Example output:

```
real    0m2.001s
user    0m0.000s
sys     0m0.001s
```

The output shows:

- `real`: The elapsed real (wall clock) time the command took to complete.
- `user`: The amount of CPU time the command spent in user mode.
- `sys`: The amount of CPU time the command spent in kernel mode.

The `time` command can also be used with shell scripts:

```bash
time ./my_script.sh
```

This will measure the execution time of the entire script.

The `time` command is a useful tool for understanding the performance of your commands and scripts, and can help you identify areas for optimization.
