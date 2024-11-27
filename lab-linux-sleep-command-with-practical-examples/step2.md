# Use sleep Command with Time Intervals

In this step, you will learn how to use the `sleep` command with different time intervals to control the timing of your scripts and commands.

In addition to using a single duration value, you can also use the `sleep` command with multiple time intervals. This can be useful for creating more complex timing scenarios.

For example, to pause for 2 seconds, then 5 seconds, and then 1 second:

```
sleep 2 && sleep 5 && sleep 1
```

Example output:

```
[labex@project ~]$ sleep 2 && sleep 5 && sleep 1
[labex@project ~]$
```

You can also combine the `sleep` command with other Linux commands to create more complex workflows. For instance, you can use `sleep` to introduce delays between commands or to pause a script for user input.

```
echo "Waiting for 10 seconds..."
sleep 10
echo "Done waiting!"
```

Example output:

```
[labex@project ~]$ echo "Waiting for 10 seconds..."
Waiting for 10 seconds...
[labex@project ~]$ sleep 10
[labex@project ~]$ echo "Done waiting!"
Done waiting!
[labex@project ~]$
```

In this example, the script will pause for 10 seconds between the two `echo` commands.
