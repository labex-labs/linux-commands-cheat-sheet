# Manage Background Processes with jobs

In this step, we will learn how to manage background processes using the `jobs` command.

First, let's start a few background processes:

```bash
sleep 60 &
sleep 120 &
```

Now, let's use the `jobs` command to view the background processes:

```bash
jobs
```

Example output:

```
[1] Running                 sleep 60 &
[2] Running                 sleep 120 &
```

The output shows that we have two background processes with job IDs `[1]` and `[2]`.

We can also use the `jobs` command to suspend a specific background process:

```bash
jobs -s
```

This will show any stopped background processes.

To suspend the first background process (job ID `[1]`), we can use the `kill` command with the `-STOP` option:

```bash
kill -STOP %1
```

To resume the suspended process, we can use the `kill` command with the `-CONT` option:

```bash
kill -CONT %1
```

This will resume the suspended `sleep` process.

Finally, to terminate a specific background process, we can use the `kill` command with the `-TERM` option:

```bash
kill -TERM %2
```

This will terminate the second `sleep` process.
