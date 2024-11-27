# Disown a Running Process in the Background

In this step, you will learn how to disown a running process in the background, allowing it to continue executing even after you log out of the system or close the terminal.

First, let's start a background process that runs indefinitely:

```bash
# Start a background process that runs indefinitely
$ sleep 1000 &
[1] 12345
```

Now, let's disown the running process using the `disown` command:

```bash
# Disown the running process
$ disown %1
```

Example output:

```

```

In the example above, we first start a background process using the `sleep 1000 &` command. This will run the `sleep` command in the background for 1000 seconds (approximately 16 minutes).

Next, we use the `disown %1` command to detach the process from the shell. The `%1` refers to the job number of the background process, which you can find using the `jobs` command.

After running the `disown` command, the process will continue to run in the background, even if you log out of the system or close the terminal.

To verify that the process is still running, you can use the `ps` command:

```bash
# Check if the process is still running
$ ps -ef | grep 'sleep 1000'
labex     12345  12321  0 11:30 pts/0    00:00:00 sleep 1000
```

As you can see, the `sleep 1000` process is still running, even though we have disowned it.
