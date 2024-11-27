# Advanced Calculations and Functions in bc

In this step, we will explore some of the advanced calculations and functions available in the `bc` command.

First, let's enter the `bc` interactive mode:

```
bc
```

One of the advanced features of `bc` is the ability to use variables. Let's try an example:

```
x=5
y=10
z=x+y
print z
```

Example output:

```
15
```

`bc` also supports a wide range of mathematical functions, such as trigonometric functions, logarithmic functions, and more. Let's try some examples:

```
scale=2
sqrt(16)
```

Example output:

```
4.00
```

```
sin(30)
```

Example output:

```
0.50
```

```
log(100)
```

Example output:

```
2.00
```

You can also use the `scale` command to control the number of decimal places displayed in the output.

```
scale=4
3 / 2
```

Example output:

```
1.5000
```

To exit the `bc` interactive mode, simply type `quit` and press Enter.
