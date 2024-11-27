# List and Manage Background Processes

In this step, you will learn how to list and manage background processes using the `jobs` and `fg` commands.

First, let's start a few background processes:

```bash
$ sleep 60 &
[1] 12345
$ sleep 120 &
[2] 12346
$ sleep 180 &
[3] 12347
```

To list the currently running background processes, use the `jobs` command:

```bash
$ jobs
[1]   Running                 sleep 60 &
[2]   Running                 sleep 120 &
[3]   Running                 sleep 180 &
```

The `jobs` command shows the job number, status, and command of each background process.

You can also get more detailed information about the background processes using the `jobs -l` command:

```bash
$ jobs -l
[1] 12345 Running                 sleep 60 &
[2] 12346 Running                 sleep 120 &
[3] 12347 Running                 sleep 180 &
```

This includes the process ID (PID) of each background process.

To bring a background process to the foreground, use the `fg` command followed by the job number:

```bash
$ fg 2
sleep 120
```

The `fg` command brings the specified background process to the foreground, allowing you to interact with it.

To stop a background process, you can use the `kill` command with the process ID (PID) obtained from the `jobs -l` command:

```bash
$ kill 12346
[2]+ Terminated              sleep 120
```

This will terminate the background process with PID 12346.
