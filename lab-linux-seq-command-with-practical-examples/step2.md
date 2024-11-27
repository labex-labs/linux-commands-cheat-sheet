# Generate Numeric Sequences with the seq Command

In this step, you will learn how to use the `seq` command to generate various numeric sequences.

Let's start by generating a sequence of numbers from 1 to 10:

```
seq 10
```

Example output:

```
1
2
3
4
5
6
7
8
9
10
```

You can also specify a starting number and an ending number:

```
seq 5 10
```

Example output:

```
5
6
7
8
9
10
```

To generate a sequence with a specific step size, use the `start step stop` format:

```
seq 1 2 10
```

Example output:

```
1
3
5
7
9
```

In this example, the sequence starts from 1, increments by 2, and ends at 10.

You can also use negative values to generate a descending sequence:

```
seq 10 -2 0
```

Example output:

```
10
8
6
4
2
0
```

The `seq` command can be useful in various scenarios, such as:

- Generating a range of numbers for use in shell scripts or automation tasks.
- Creating test data or sample input for programs.
- Iterating over a range of values in a loop.

Let's explore some more advanced options in the next step.
