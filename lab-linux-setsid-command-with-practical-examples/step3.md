# Running Background Processes with setsid

In this final step, we will learn how to use the `setsid` command to effectively run background processes in Linux.

One common use case for `setsid` is to run long-running processes in the background, without them being affected by the current session. This is particularly useful when you need to run a process that should continue to run even after you log out of the system.

Let's try an example:

```bash
setsid bash -c 'while true; do echo "Running in the background" >> ~/project/output.txt; sleep 5; done'
```

This will start a background process that writes "Running in the background" to a file named `output.txt` in the `~/project` directory every 5 seconds.

Example output:

```
[1] 1234
```

The output shows the process ID (PID) of the background process.

Now, let's verify that the process is running in a separate session and that the output file is being generated:

```bash
ps -o sid,pid,cmd | grep 'while true'
cat ~/project/output.txt
```

Example output:

```
  1234 1234 bash -c 'while true; do echo "Running in the background" >> ~/project/output.txt; sleep 5; done'
Running in the background
Running in the background
Running in the background
```

The `ps` command shows that the process is running in a separate session, and the `cat` command shows the contents of the `output.txt` file, which is being continuously updated by the background process.

Even if you close the current terminal, the background process will continue to run and update the `output.txt` file. You can check the file later to see the output.

In this lab, we've learned how to use the `setsid` command to detach processes from the current session and run them in the background. This is a useful technique for managing long-running processes in Linux.
