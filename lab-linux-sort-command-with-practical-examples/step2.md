# Sort Files by Different Criteria

In this step, we will learn how to sort files based on different criteria using the `sort` command.

Let's create a new file named `data2.txt` with some sample data:

```bash
echo -e "John,25,male\nJane,30,female\nBob,35,male\nAlice,28,female" > data2.txt
```

Now, let's sort the file by the first field (name):

```bash
sort -t ',' -k 1 data2.txt
```

Example output:

```
Alice,28,female
Bob,35,male
Jane,30,female
John,25,male
```

In this example, we used the `-t ',' option to specify the field delimiter as a comma, and the `-k 1` option to sort based on the first field (name).

You can also sort by numeric values. For example, to sort by the second field (age):

```bash
sort -t ',' -k 2n data2.txt
```

Example output:

```
John,25,male
Alice,28,female
Jane,30,female
Bob,35,male
```

The `n` option in `-k 2n` tells `sort` to sort the second field numerically.

Another useful option is `-r` to sort in reverse order:

```bash
sort -t ',' -k 2nr data2.txt
```

Example output:

```
Bob,35,male
Jane,30,female
Alice,28,female
John,25,male
```

The `sort` command provides many more options to customize the sorting behavior. Experiment with different options to sort your files based on your specific needs.
