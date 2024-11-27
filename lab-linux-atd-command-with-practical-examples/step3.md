# Monitoring and Controlling Scheduled Tasks

In this step, we will learn how to monitor and control the scheduled tasks using the `at` command.

To view the list of scheduled tasks, use the `atq` (at queue) command:

```bash
atq
```

This will display the job ID, date and time, and the user who scheduled the task.

Example output:

```
3       2023-04-14 12:40 a labex
```

If you want to remove a scheduled task, use the `atrm` (at remove) command followed by the job ID:

```bash
atrm 3
```

This will remove the task with the job ID 3 from the queue.

You can also use the `at -c [job_id]` command to view the details of a scheduled task, including the commands that will be executed:

```bash
at -c 3
```

Example output:

```
#!/bin/sh
# atrun uid=1000 gid=1000
# mail labex 0
echo "Hello, World!" > ~/project/output.txt
```

This shows the shell script that will be executed when the scheduled task runs.
