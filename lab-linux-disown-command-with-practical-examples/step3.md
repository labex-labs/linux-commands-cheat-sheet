# Disown Multiple Processes and Manage Their Output

In this step, you will learn how to disown multiple processes running in the background and manage their output.

First, let's start two background processes that run indefinitely:

```bash
# Start two background processes
$ sleep 1000 &
[1] 12345
$ sleep 2000 &
[2] 12346
```

Now, let's disown both processes using the `disown` command:

```bash
# Disown the running processes
$ disown %1 %2
```

Example output:

```

```

In the example above, we first start two background processes using the `sleep 1000 &` and `sleep 2000 &` commands. This will run the `sleep` command in the background for 1000 and 2000 seconds, respectively.

Next, we use the `disown %1 %2` command to detach both processes from the shell. The `%1` and `%2` refer to the job numbers of the background processes, which you can find using the `jobs` command.

After running the `disown` command, both processes will continue to run in the background, even if you log out of the system or close the terminal.

To manage the output of the disowned processes, you can redirect their output to a file:

```bash
# Start two background processes and redirect their output to files
$ sleep 1000 > process1.log 2>&1 &
[1] 12345
$ sleep 2000 > process2.log 2>&1 &
[2] 12346

# Disown the running processes
$ disown %1 %2
```

In the example above, we start the two background processes and redirect their output to `process1.log` and `process2.log` files, respectively. We then use the `disown` command to detach the processes from the shell.

After the processes have finished running, you can check the content of the log files to see the output of the disowned processes.
