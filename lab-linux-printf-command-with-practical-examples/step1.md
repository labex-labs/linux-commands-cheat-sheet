# Introduction to the printf Command

In this step, you will learn about the `printf` command in Linux. The `printf` command is used to format and print output to the console. It provides more flexibility than the `echo` command, allowing you to control the formatting and layout of the output.

Let's start by exploring the basic usage of the `printf` command:

```bash
printf "Hello, World!\n"
```

Example output:

```
Hello, World!
```

The `printf` command takes a format string as its first argument, which can include special formatting directives. In the example above, `\n` is a formatting directive that represents a newline character.

You can also use `printf` to print variables and perform simple calculations:

```bash
name="John Doe"
age=30
echo "My name is $name and I am $age years old."
printf "My name is %s and I am %d years old.\n" "$name" "$age"
```

Example output:

```
My name is John Doe and I am 30 years old.
My name is John Doe and I am 30 years old.
```

In the second `printf` example, `%s` is used to format the string variable `$name`, and `%d` is used to format the integer variable `$age`.
