# Understand the Basics of sort Command

In this step, we will learn the basics of the `sort` command in Linux. The `sort` command is used to sort the lines of a file or the output of a command in a specific order.

To get started, let's create a sample file named `data.txt` with some unsorted data:

```bash
echo -e "apple\norange\nbanana\npear" > data.txt
```

Now, let's sort the contents of the `data.txt` file using the `sort` command:

```bash
sort data.txt
```

Example output:

```
apple
banana
orange
pear
```

As you can see, the lines in the file have been sorted in alphabetical order.

The `sort` command has several options that allow you to customize the sorting behavior. Some common options include:

- `-r`: Sort in reverse order (descending)
- `-n`: Sort numerically
- `-k <field>`: Sort based on a specific field or column
- `-t <delimiter>`: Use a custom field delimiter

For example, to sort the file in reverse order:

```bash
sort -r data.txt
```

Example output:

```
pear
orange
banana
apple
```

The `sort` command can also be combined with other Linux commands, such as `cat`, `grep`, and `pipe`, to perform more complex text processing tasks. We'll explore these use cases in the next steps.
