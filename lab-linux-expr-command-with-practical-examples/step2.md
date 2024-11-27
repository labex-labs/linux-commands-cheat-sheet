# Perform Basic Arithmetic Operations Using expr

In this step, you will learn how to use the `expr` command to perform basic arithmetic operations, such as addition, subtraction, multiplication, division, and modulo.

Let's start by performing some arithmetic operations:

```
# Addition
expr 12 + 5
```

Example output:

```
17
```

```
# Subtraction
expr 20 - 8
```

Example output:

```
12
```

```
# Multiplication
expr 6 \* 4
```

Example output:

```
24
```

```
# Division
expr 18 / 3
```

Example output:

```
6
```

```
# Modulo
expr 19 % 7
```

Example output:

```
5
```

In the above examples, we used the `expr` command to perform basic arithmetic operations. Remember to escape the `*` character with a backslash (`\*`) when performing multiplication to prevent the shell from interpreting it as a wildcard.

Now, let's try some more complex arithmetic expressions:

```
# Complex expression
expr \( 10 + 5 \) \* 3 / 2 + 1
```

Example output:

```
26
```

In this example, we used parentheses `()` to group the operations and control the order of evaluation. The expression `(10 + 5) * 3 / 2 + 1` is evaluated as follows:

1. `10 + 5 = 15`
2. `15 * 3 = 45`
3. `45 / 2 = 22.5`
4. `22.5 + 1 = 23.5`, which is rounded down to 26 by the `expr` command.
