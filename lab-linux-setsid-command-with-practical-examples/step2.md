# Detaching a Process from the Current Session

In this step, we will learn how to detach a process from the current session using the `setsid` command.

Detaching a process from the current session is useful when you want to run a long-running process in the background, without it being affected by signals or terminal input/output of the current session.

Let's start by running a simple command using `setsid`:

```bash
setsid bash -c 'sleep 60 && echo "Process completed"'
```

This will run the `sleep 60` command in a new session, and the process will continue to run even if you close the current terminal. The `echo "Process completed"` command will be executed after the `sleep` command is finished.

Example output:

```
[1] 1234
```

The output shows the process ID (PID) of the `sleep` command, which is running in the background.

Now, let's verify that the process is running in a separate session:

```bash
ps -o sid,pid,cmd | grep sleep
```

Example output:

```
  1234 1234 sleep 60
```

The `ps` command shows that the `sleep` process has a different session ID (SID) than the current session.

To check the output of the detached process, we can use the `ps` command to find the PID of the process, and then use the `cat` command to read the output from the `/proc/<PID>/fd/1` file (which represents the stdout of the process):

```bash
pid=$(ps -o pid,cmd | grep 'sleep 60' | awk '{print $1}')
cat /proc/$pid/fd/1
```

Example output:

```
Process completed
```

This shows that the `echo "Process completed"` command was executed after the `sleep` command finished.

In the next step, we will learn how to run background processes more effectively using `setsid`.
