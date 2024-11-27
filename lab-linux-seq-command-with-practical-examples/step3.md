# Customize Numeric Sequences with Step Size and Formatting

In this step, you will learn how to customize the output of the `seq` command by using various options to control the step size and formatting.

Let's start by generating a sequence with a custom step size:

```
seq 1 3 10
```

Example output:

```
1
4
7
10
```

In this example, the sequence starts from 1, increments by 3, and ends at 10.

You can also use the `-f` or `--format` option to specify a custom output format using a printf-style format string:

```
seq -f "Value: %.2f" 1 0.5 3
```

Example output:

```
Value: 1.00
Value: 1.50
Value: 2.00
Value: 2.50
Value: 3.00
```

In this example, the `%.2f` format specifier is used to display the numbers with two decimal places.

Another useful option is `-w` or `--equal-width`, which pads the output with leading zeros to make all numbers have the same width:

```
seq -w 01 02 10
```

Example output:

```
01
02
03
04
05
06
07
08
09
10
```

You can also use the `-s` or `--separator` option to specify a custom separator between the numbers (the default is a newline):

```
seq -s ", " 1 5
```

Example output:

```
1, 2, 3, 4, 5
```

These options can be combined to create more complex and customized numeric sequences. Experiment with different combinations to see how the `seq` command can be tailored to your needs.
