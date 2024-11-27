# Utilize echo for Variable Substitution and Formatting

In this step, you will learn how to use the `echo` command for variable substitution and formatting.

Variable Substitution:
You can use the `echo` command to display the value of a variable. To do this, simply include the variable name within the string, prefixed with a `$` symbol:

```
name="John Doe"
echo "Hello, $name!"
```

Example output:

```
Hello, John Doe!
```

Formatting:
The `echo` command also supports various formatting options, such as using escape sequences to control the output. Some common escape sequences include:

- `\n`: Newline
- `\t`: Tab
- `\e[1m`: Bold text
- `\e[0m`: Reset formatting

Example:

```
echo -e "Name:\t$name\nAge:\t30"
```

Example output:

```
Name:    John Doe
Age:     30
```

In the above example, the `-e` option is used to enable the interpretation of the `\t` and `\n` escape sequences, which add a tab and a newline, respectively.

You can also use the `echo` command to align text using spaces or tabs. This can be useful for creating formatted output, such as tables or reports.

Example:

```
echo "Name     Age  City"
echo "John Doe 30   New York"
echo "Jane Doe 25   London"
```

Example output:

```
Name     Age  City
John Doe 30   New York
Jane Doe 25   London
```

The `echo` command's variable substitution and formatting capabilities make it a powerful tool for creating dynamic and formatted output in the terminal.
