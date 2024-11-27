# Unset Environment Variables

In this step, you will learn how to unset environment variables in Linux.

Environment variables are used to store configuration information that can be accessed by the shell and other programs. Sometimes, you may need to remove or unset these variables.

Let's start by creating a few environment variables:

```bash
# Create environment variables
export VAR1="Value 1"
export VAR2="Value 2"
export VAR3="Value 3"

# List all environment variables
env
```

Example output:

```
VAR1=Value 1
VAR2=Value 2
VAR3=Value 3
...
```

Now, let's unset these variables one by one:

```bash
# Unset a single variable
unset VAR1
echo $VAR1

# Unset multiple variables
unset VAR2 VAR3
echo $VAR2
echo $VAR3
```

Example output:

```

```

As you can see, after running the `unset` commands, the environment variables are no longer accessible.

You can also use the `unset` command to remove variables from the shell's environment. This can be useful when you want to clean up your environment or remove variables that are no longer needed.
