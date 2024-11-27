# Printing Variables and Expressions with printf

In this step, you will learn how to use the `printf` command to print the values of variables and evaluate simple expressions.

To print the value of a variable, you can use the `%s` format specifier for strings, `%d` for integers, and `%f` for floating-point numbers:

```bash
name="John Doe"
age=30
pi=3.14159
printf "Name: %s\n" "$name"
printf "Age: %d\n" "$age"
printf "Pi: %.2f\n" "$pi"
```

Example output:

```
Name: John Doe
Age: 30
Pi: 3.14
```

You can also use the `printf` command to evaluate simple arithmetic expressions:

```bash
width=10
height=5
area=$(( width * height ))
printf "The area of a %dx%d rectangle is %d square units.\n" "$width" "$height" "$area"
```

Example output:

```
The area of a 10x5 rectangle is 50 square units.
```

In the example above, we first calculate the area using the `$(( ))` syntax, which evaluates the arithmetic expression. We then use the `printf` command to print the result, using the appropriate format specifiers for the variables.
