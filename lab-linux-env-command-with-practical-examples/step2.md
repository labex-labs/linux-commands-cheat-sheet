# Modify Environment Variables Using the env Command

In this step, we will learn how to modify environment variables using the `env` command.

First, let's create a new environment variable:

```bash
export MY_VAR="Hello, World!"
echo $MY_VAR
```

Example output:

```
Hello, World!
```

Now, let's use the `env` command to modify the value of the `MY_VAR` environment variable:

```bash
env MY_VAR="Goodbye, World!" echo $MY_VAR
```

Example output:

```
Goodbye, World!
```

In this example, we used the `env` command to set the `MY_VAR` environment variable to "Goodbye, World!" and then echoed the value of `MY_VAR`.

You can also use the `env` command to remove an environment variable:

```bash
env -u MY_VAR echo $MY_VAR
```

Example output:

```

```

In this example, we used the `-u` option to unset the `MY_VAR` environment variable, and then echoed the value of `MY_VAR`, which is now empty.

The `env` command is a powerful tool for managing environment variables in your shell. You can use it to set, modify, and remove environment variables as needed for your specific use case.
