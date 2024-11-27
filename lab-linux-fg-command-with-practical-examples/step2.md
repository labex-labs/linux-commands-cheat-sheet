# Bring a Background Process to the Foreground

In this step, you will learn how to bring a background process to the foreground using the `fg` command.

First, let's start a background process:

```bash
sleep 60 &
```

This will start the `sleep` command in the background, and you'll get the process ID (PID) of the background process.

Example output:

```
[1] 12345
```

Now, to bring this background process to the foreground, you can use the `fg` command:

```bash
fg
```

This will bring the most recent background process to the foreground, allowing you to interact with it.

If you have multiple background processes, you can use the `fg` command with the PID or the job number (the number in the square brackets) to bring a specific process to the foreground. For example:

```bash
fg 12345
```

or

```bash
fg %1
```

Both of these commands will bring the background process with the PID 12345 or the job number 1 to the foreground.

Once the process is in the foreground, you can interact with it directly. For example, if you started the `sleep` command in the background, you can now interrupt it by pressing `Ctrl+C`.
