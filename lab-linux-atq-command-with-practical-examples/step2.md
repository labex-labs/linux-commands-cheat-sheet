# Listing Scheduled Jobs with atq

In this step, you will learn how to use the `atq` command to list the scheduled jobs or tasks on your system.

First, let's create a few sample jobs using the `at` command. Run the following commands to schedule three jobs to run at different times:

```
echo "echo 'Job 1 executed'" | at 13:30
echo "echo 'Job 2 executed'" | at 14:00
echo "echo 'Job 3 executed'" | at 14:30
```

Now, let's use the `atq` command to list the scheduled jobs:

```
atq
```

Example output:

```
3       2023-04-15 14:30 a labex
2       2023-04-15 14:00 a labex
1       2023-04-15 13:30 a labex
```

The output shows that there are three scheduled jobs, each with a unique job number, the scheduled time, and the user who scheduled the job (in this case, the `labex` user).

You can also use the `atq` command with additional options to customize the output. For example, to display the job numbers and scheduled times only, you can run:

```
atq -c
```

Example output:

```
3       2023-04-15 14:30
2       2023-04-15 14:00
1       2023-04-15 13:30
```

In the next step, you will learn how to remove scheduled jobs using the `atrm` command.
