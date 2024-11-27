# Find the PID of a Running Process

In this step, you will learn how to use the `pidof` command to find the process ID (PID) of a running process.

First, let's start a new process that we can use for this example. Open a new terminal and run the following command to start a simple Python script:

```bash
python3 -c "import time; print('Running process...'); time.sleep(60)"
```

This will start a Python process that will run for 60 seconds, printing "Running process..." to the console.

Now, in a separate terminal, you can use the `pidof` command to find the PID of the running Python process:

```bash
pidof python3
```

Example output:

```
12345
```

The output shows the PID of the running Python process, which in this case is `12345`.

You can also use the `ps` command to verify the PID and the process information:

```bash
ps -p 12345 -o pid,comm
```

Example output:

```
  PID COMMAND
12345 python3
```

The `ps` command confirms that the PID `12345` belongs to the `python3` process.

Now that you know how to find the PID of a running process, you can use this information to interact with or terminate the process as needed.
