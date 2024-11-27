# Removing Scheduled Jobs with atrm

In this step, you will learn how to use the `atrm` command to remove or cancel scheduled jobs or tasks.

First, let's list the currently scheduled jobs using the `atq` command:

```
atq
```

Example output:

```
3       2023-04-15 14:30 a labex
2       2023-04-15 14:00 a labex
1       2023-04-15 13:30 a labex
```

To remove a specific job, you can use the `atrm` command followed by the job number. For example, to remove the job with the number 2, run:

```
atrm 2
```

Now, let's verify that the job has been removed by running `atq` again:

```
atq
```

Example output:

```
3       2023-04-15 14:30 a labex
1       2023-04-15 13:30 a labex
```

As you can see, the job with the number 2 has been removed from the list of scheduled jobs.

You can also remove multiple jobs at once by specifying their job numbers separated by spaces:

```
atrm 1 3
```

This will remove the jobs with numbers 1 and 3.

If you want to remove all scheduled jobs, you can use the `atrm -a` command:

```
atrm -a
```

This will remove all scheduled jobs for the current user.

In the next step, you will learn about the `at` command, which is used to schedule the jobs that you can then manage with the `atq` and `atrm` commands.
