# Combine Multiple Files Using paste Command

In this step, we will learn how to use the `paste` command to combine multiple files in more advanced ways.

First, let's create some additional sample files:

```bash
echo -e "Monday\nTuesday\nWednesday" > days.txt
echo -e "1\n2\n3" > numbers.txt
```

Now, we can use the `paste` command to combine these files in different ways:

Combine files horizontally:

```bash
paste file1.txt file2.txt file3.txt
```

Combine files vertically:

```bash
paste -d "\n" file1.txt file2.txt file3.txt
```

Example output:

```
Apple   Red     Fruit
Banana  Yellow  Fruit
Cherry  Purple  Fruit
```

In the vertical combination, we used the `-d "\n"` option to specify a newline character as the delimiter, which stacks the lines from the files on top of each other.

You can also use the `paste` command to create a matrix-like structure by combining multiple files:

```bash
paste days.txt numbers.txt
```

Example output:

```
Monday  1
Tuesday 2
Wednesday       3
```

In this example, the `paste` command combines the corresponding lines from the `days.txt` and `numbers.txt` files.
