# Modify Shell Variables Using the set Command

In this step, you will learn how to modify shell variables using the `set` command.

First, let's create a new shell variable:

```bash
set MYVAR="Hello, World!"
```

Now, let's verify that the variable was created correctly:

```bash
echo $MYVAR
```

Example output:

```
Hello, World!
```

You can also use the `set` command to modify the value of an existing shell variable:

```bash
MYVAR="Goodbye, World!"
set MYVAR
```

Example output:

```
MYVAR="Goodbye, World!"
```

To unset a shell variable, you can use the `-u` option with the `set` command:

```bash
set -u MYVAR
echo $MYVAR
```

Example output:

```
bash: MYVAR: unbound variable
```

As you can see, the `MYVAR` variable is now unset, and attempting to access it results in an error.

Finally, let's explore how to make a shell variable read-only using the `-a` option:

```bash
set -a READONLY_VAR="This variable is read-only"
READONLY_VAR="New value"
```

Example output:

```
bash: READONLY_VAR: readonly variable
```

In this example, we made the `READONLY_VAR` variable read-only, and attempting to modify its value resulted in an error.
