# Understand the Purpose and Usage of the env Command

In this step, we will explore the purpose and usage of the `env` command in Linux. The `env` command is a utility that allows you to run a command in a modified environment.

First, let's print the current environment variables using the `env` command:

```bash
env
```

Example output:

```
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
HOME=/home/labex
SHELL=/bin/bash
```

As you can see, the `env` command lists all the current environment variables and their values.

Next, let's create a new environment variable and run a command in that environment:

```bash
export MY_VAR="Hello, World!"
env MY_VAR="Hello, World!" echo $MY_VAR
```

Example output:

```
Hello, World!
```

In this example, we first set the `MY_VAR` environment variable using the `export` command. Then, we use the `env` command to run the `echo` command with the `MY_VAR` environment variable set to "Hello, World!".

The `env` command is useful when you need to run a command in a specific environment, for example, when you need to run a command with different environment variables than the current shell.
