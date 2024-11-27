# Introduction to the atq Command

In this step, you will learn about the `atq` command in Linux, which is used to list scheduled jobs or tasks. The `atq` command is part of the `at` utility, which allows you to schedule commands or scripts to run at a specific time in the future.

To get started, let's first check if the `at` package is installed on your system. Run the following command:

```
sudo apt-get update
sudo apt-get install -y at
```

This will install the `at` package, which includes the `atq` command.

The `atq` command is used to display a list of jobs that are currently scheduled to run at a specific time in the future. To use the `atq` command, simply run:

```
atq
```

Example output:

```
3       2023-04-15 14:30 a labex
2       2023-04-15 14:00 a labex
1       2023-04-15 13:30 a labex
```

This output shows that there are three jobs currently scheduled to run at different times. Each job is assigned a unique job number, which can be used to identify and manage the job.

In the next step, you will learn how to remove scheduled jobs using the `atrm` command.
