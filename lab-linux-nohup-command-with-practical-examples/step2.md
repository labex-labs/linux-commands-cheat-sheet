# Run a Long-Running Process Using nohup

In this step, you will learn how to use the `nohup` command to run a long-running process in the background.

Let's start by creating a simple script that runs a long-running process. Create a new file named `long_process.sh` in the `~/project` directory with the following content:

```bash
#!/bin/bash
echo "Starting long-running process..."
sleep 120
echo "Long-running process completed."
```

Make the script executable:

```bash
chmod +x ~/project/long_process.sh
```

Now, let's run the script using `nohup`:

```bash
nohup ~/project/long_process.sh &
```

This will start the long-running process in the background, and the output will be saved to a file named `nohup.out` in the current directory.

Example output:

```
[1] 12345
```

The output shows the process ID (PID) of the background process.

To verify that the process is still running, you can use the `ps` command:

```bash
ps aux | grep long_process.sh
```

Example output:

```
labex     12345  0.0  0.0   8184   712 pts/0    S    14:20   0:00 /bin/bash /home/labex/project/long_process.sh
```

As you can see, the long-running process is still running, even though we've logged out of the terminal.
