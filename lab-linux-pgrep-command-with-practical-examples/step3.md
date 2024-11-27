# Combine pgrep with Other Commands for Advanced Process Monitoring

In this final step, you will learn how to combine the `pgrep` command with other Linux commands to perform more advanced process monitoring tasks.

One common use case is to combine `pgrep` with the `ps` command to get more detailed information about the running processes:

```bash
ps -f -p $(pgrep <process_name>)
```

This will display the full process information, including the user, PID, parent PID, start time, and command for the processes that match the specified `<process_name>`.

Example output:

```
UID        PID  PPID  C STIME TTY          TIME CMD
labex     1234  5678  0 10:30 pts/0    00:00:01 /usr/bin/python3 /app/webserver.py
labex     5678  9012  0 10:29 pts/0    00:00:00 nginx: master process nginx -g daemon off;
labex     9012  1234  0 10:29 pts/0    00:00:00 nginx: worker process
```

You can also use `pgrep` with other commands, such as `kill` or `top`, to manage or monitor processes more effectively:

```bash
# Kill all processes with a name that starts with "web"
sudo kill -9 $(pgrep -f ^web)

# Monitor the top CPU-consuming processes
top -p $(pgrep -d, <process_name>)
```

The first example uses `pgrep` to find the PIDs of all processes with a name starting with "web", and then uses the `kill` command to terminate them. The second example uses `pgrep` to get the PIDs of the processes matching the specified `<process_name>`, and then passes them to the `top` command to monitor their resource usage.
