# Understand the Purpose of the export Command

In this step, we will explore the purpose of the `export` command in Linux. The `export` command is used to set environment variables that can be accessed by the current shell and any child processes (such as programs or scripts) that are launched from the current shell.

Environment variables are named values that are stored in the shell's environment. They can be used to store configuration settings, paths, or any other information that needs to be accessible to the shell and its child processes.

Let's start by checking the current environment variables in our Ubuntu 22.04 Docker container:

```bash
env
```

Example output:

```
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
LANG=C.UTF-8
LANGUAGE=en_US:en
LC_ALL=C.UTF-8
HOME=/home/labex
```

As you can see, there are several environment variables already defined, such as `PATH`, `LANG`, and `HOME`.

Now, let's create a new environment variable using the `export` command:

```bash
export MY_VARIABLE="Hello, World!"
```

We can verify that the variable has been set by using the `env` command again:

```bash
env | grep MY_VARIABLE
```

Example output:

```
MY_VARIABLE=Hello, World!
```

The `export` command makes the `MY_VARIABLE` environment variable available to the current shell and any child processes that are launched from it. This can be useful for configuring the environment for your applications or scripts.

In the next step, we will explore more practical examples of using the `export` command.
