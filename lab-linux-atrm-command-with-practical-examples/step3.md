# Troubleshooting Scheduled Tasks with atrm

In this final step, we will learn how to troubleshoot scheduled tasks using the `atrm` command.

First, let's create a few more scheduled tasks:

```bash
echo "echo 'Task 4'" | sudo at now + 1 minute
echo "echo 'Task 5'" | sudo at now + 2 minutes
echo "echo 'Task 6'" | sudo at now + 3 minutes
```

Now, let's list the scheduled tasks using the `atq` command:

```bash
sudo atq
```

Example output:

```
6       Fri Apr 14 14:46:00 2023 a labex
5       Fri Apr 14 14:45:00 2023 a labex
4       Fri Apr 14 14:44:00 2023 a labex
3       Fri Apr 14 14:43:00 2023 a labex
1       Fri Apr 14 14:41:00 2023 a labex
```

Suppose we want to remove the task with job ID 5, but we accidentally enter the wrong job ID:

```bash
sudo atrm 50
```

Example output:

```
atrm: 50: no such job
```

In this case, the `atrm` command was unable to find the job with ID 50, as it does not exist. To troubleshoot this, we can use the `atq` command to list the scheduled tasks again and verify the correct job ID.

```bash
sudo atq
```

Example output:

```
6       Fri Apr 14 14:46:00 2023 a labex
5       Fri Apr 14 14:45:00 2023 a labex
4       Fri Apr 14 14:44:00 2023 a labex
3       Fri Apr 14 14:43:00 2023 a labex
1       Fri Apr 14 14:41:00 2023 a labex
```

Now, we can remove the task with job ID 5 correctly:

```bash
sudo atrm 5
```

Example output:

```
5 removed
```
