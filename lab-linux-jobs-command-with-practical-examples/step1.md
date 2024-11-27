# Understand the jobs Command

In this step, we will explore the `jobs` command in Linux, which is used to manage background processes. The `jobs` command allows you to view, suspend, resume, and terminate background processes.

First, let's start a background process using the `sleep` command:

```bash
sleep 60 &
```

Here, we start the `sleep` command in the background by adding the `&` symbol at the end of the command.

Now, let's use the `jobs` command to view the background processes:

```bash
jobs
```

Example output:

```
[1]+  Running                 sleep 60 &
```

The output shows that we have one background process with job ID `[1]` that is currently running.

We can also use the `jobs` command to suspend a background process:

```bash
jobs -s
```

This will show any stopped background processes.

To suspend the `sleep` process, we can use the `kill` command with the `-STOP` option:

```bash
kill -STOP %1
```

The `%1` refers to the job ID of the background process.

To resume the suspended process, we can use the `kill` command with the `-CONT` option:

```bash
kill -CONT %1
```

This will resume the suspended `sleep` process.

Finally, to terminate a background process, we can use the `kill` command with the `-TERM` option:

```bash
kill -TERM %1
```

This will terminate the `sleep` process.
