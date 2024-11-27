# Manage Multiple Background Processes with fg

In this step, you will learn how to manage multiple background processes using the `fg` command.

Let's start by creating a few background processes:

```bash
sleep 60 &
sleep 120 &
sleep 180 &
```

This will start three `sleep` commands in the background. You can see the job numbers and process IDs (PIDs) of the background processes:

Example output:

```
[1] 12345
[2] 12346
[3] 12347
```

Now, to bring a specific background process to the foreground, you can use the `fg` command with the job number or the PID:

```bash
fg %2
```

This will bring the background process with job number 2 (the `sleep 120` command) to the foreground.

If you want to switch between multiple background processes, you can use the `fg` command repeatedly:

```bash
fg %1
# Interrupt the first process by pressing Ctrl+C
fg %3
# Interrupt the third process by pressing Ctrl+C
```

This will allow you to switch between the different background processes and interact with them directly.

You can also use the PID instead of the job number to bring a specific process to the foreground:

```bash
fg 12347
```

This will bring the background process with PID 12347 (the `sleep 180` command) to the foreground.

By learning how to manage multiple background processes with the `fg` command, you can optimize your workflow and efficiently switch between different tasks running in the background.
