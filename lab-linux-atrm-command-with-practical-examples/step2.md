# Removing Scheduled Tasks with atrm

In this step, we will learn how to remove scheduled tasks using the `atrm` command.

First, let's create a few scheduled tasks using the `at` command:

```bash
echo "echo 'Task 1'" | sudo at now + 1 minute
echo "echo 'Task 2'" | sudo at now + 2 minutes
echo "echo 'Task 3'" | sudo at now + 3 minutes
```

Now, let's list the scheduled tasks using the `atq` command:

```bash
sudo atq
```

Example output:

```
3       Fri Apr 14 14:43:00 2023 a labex
2       Fri Apr 14 14:42:00 2023 a labex
1       Fri Apr 14 14:41:00 2023 a labex
```

To remove a specific scheduled task, we can use the `atrm` command followed by the job ID. For example, to remove the task with job ID 2, we would run:

```bash
sudo atrm 2
```

Example output:

```
2 removed
```

Let's verify that the task was removed:

```bash
sudo atq
```

Example output:

```
3       Fri Apr 14 14:43:00 2023 a labex
1       Fri Apr 14 14:41:00 2023 a labex
```

You can repeat this process to remove any other scheduled tasks as needed.
