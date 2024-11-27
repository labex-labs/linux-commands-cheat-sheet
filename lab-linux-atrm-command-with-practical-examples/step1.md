# Introduction to the atrm Command

In this step, we will explore the `atrm` command in Linux, which allows you to remove scheduled tasks. The `atrm` command is part of the `at` package, which is used to schedule tasks to run at a specific time.

First, let's check if the `at` package is installed on our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y at
```

Now, let's create a sample scheduled task using the `at` command:

```bash
echo "echo 'This is a scheduled task'" | sudo at now + 1 minute
```

This will create a scheduled task that will execute the command `echo 'This is a scheduled task'` in one minute.

Example output:

```
job 1 at Fri Apr 14 14:41:00 2023
```

Now, let's use the `atrm` command to remove the scheduled task:

```bash
sudo atrm 1
```

The `1` in the command refers to the job ID of the scheduled task we created earlier.

Example output:

```
1 removed
```
