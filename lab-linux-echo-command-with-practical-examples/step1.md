# Understand the Basic Syntax of the echo Command

In this step, you will learn the basic syntax of the `echo` command in Linux. The `echo` command is a built-in command that is used to display a line of text or string on the console or terminal.

The basic syntax of the `echo` command is:

```
echo [options] [string]
```

Here, `[options]` are the optional flags or parameters that you can use with the `echo` command, and `[string]` is the text or message that you want to display.

Some common options for the `echo` command include:

- `-n`: Suppresses the trailing newline character, so the output is displayed on a single line.
- `-e`: Enables the interpretation of backslash escapes, such as `\n` for newline or `\t` for tab.

Example:

```
echo "Hello, World!"
```

Example output:

```
Hello, World!
```

In this example, the `echo` command is used to print the string "Hello, World!" to the console.

Let's try another example with the `-n` option:

```
echo -n "Hello, "
echo "World!"
```

Example output:

```
Hello, World!
```

In this example, the first `echo` command with the `-n` option suppresses the trailing newline, and the second `echo` command prints "World!" on the same line.
