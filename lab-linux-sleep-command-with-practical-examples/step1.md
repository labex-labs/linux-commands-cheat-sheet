# Understand the sleep Command

In this step, you will learn about the `sleep` command in Linux, which is used to pause the execution of a script or command for a specified amount of time.

The basic syntax of the `sleep` command is:

```
sleep DURATION
```

Where `DURATION` is the amount of time to pause, specified in seconds.

For example, to pause for 5 seconds:

```
sleep 5
```

Example output:

```
[labex@project ~]$ sleep 5
[labex@project ~]$
```

As you can see, the terminal will pause for 5 seconds before returning to the prompt.

You can also specify the duration in other time units, such as minutes, hours, or days. For example:

```
sleep 1m    # pause for 1 minute
sleep 2h    # pause for 2 hours
sleep 1d    # pause for 1 day
```

The `sleep` command is often used in shell scripts to introduce delays or pauses between commands, allowing time for other processes to complete or for the user to read output.
