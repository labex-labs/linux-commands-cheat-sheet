# Count the Occurrences of Unique Lines

In this step, you will learn how to use the `uniq` command to count the occurrences of unique lines in a file.

Let's start by creating a sample file with some duplicate lines:

```
echo -e "apple\norange\napple\nbanana\norange\napple" > sample.txt
```

Example output:

```
apple
orange
apple
banana
orange
apple
```

To count the occurrences of unique lines, we can use the `-c` option with the `uniq` command:

```
uniq -c sample.txt
```

Example output:

```
   3 apple
   1 banana
   2 orange
```

In this output, the number before each line represents the count of occurrences for that unique line.

If you want to sort the output by the count, you can pipe the output to the `sort` command:

```
uniq -c sample.txt | sort -n
```

Example output:

```
   1 banana
   2 orange
   3 apple
```

The `-n` option to `sort` sorts the output numerically, which places the lines with the lowest count first.
