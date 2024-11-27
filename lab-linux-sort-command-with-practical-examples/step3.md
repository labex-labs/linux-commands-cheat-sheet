# Combine sort with Other Linux Commands

In this final step, we will explore how to combine the `sort` command with other Linux commands to perform more advanced text processing tasks.

Let's start by generating a list of random numbers and sorting them:

```bash
shuf -i 1-100 -n 10 | sort -n
```

Example output:

```
4
12
16
26
31
41
58
67
84
97
```

In this example, we used the `shuf` command to generate 10 random numbers between 1 and 100, and then piped the output to the `sort` command to sort the numbers in numerical order.

You can also combine `sort` with `grep` to filter and sort the output:

```bash
cat data2.txt | grep 'female' | sort -t ',' -k 2n
```

Example output:

```
Alice,28,female
Jane,30,female
```

This command reads the `data2.txt` file, filters the lines containing 'female', and then sorts the output by the second field (age) in numerical order.

Another useful combination is `sort` with `uniq` to remove duplicate lines:

```bash
cat data2.txt | sort | uniq
```

Example output:

```
Alice,28,female
Bob,35,male
Jane,30,female
John,25,male
```

In this example, we first sort the `data2.txt` file, and then use the `uniq` command to remove any duplicate lines.

The possibilities are endless when you combine the `sort` command with other Linux tools. Experiment with different combinations to solve your text processing tasks more efficiently.
