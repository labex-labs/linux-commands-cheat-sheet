# Understand the Purpose and Syntax of the uniq Command

In this step, you will learn about the purpose and syntax of the `uniq` command in Linux. The `uniq` command is used to remove duplicate lines from a file or input stream.

The basic syntax of the `uniq` command is:

```
uniq [OPTION]... [INPUT_FILE [OUTPUT_FILE]]
```

Here's a breakdown of the options:

- `-c`: Prefix lines by the number of occurrences
- `-d`: Only print duplicate lines
- `-u`: Only print unique lines
- `-i`: Ignore case when comparing lines
- `-f N`: Ignore the first N fields on each line
- `-s N`: Ignore the first N characters on each line

Let's start by creating a sample file with some duplicate lines:

```
echo -e "apple\norange\napple\nbanana\norange" > sample.txt
```

Example output:

```
apple
orange
apple
banana
orange
```

Now, let's use the `uniq` command to remove the duplicate lines:

```
uniq sample.txt
```

Example output:

```
apple
orange
banana
```

In this example, the `uniq` command removed the duplicate lines "apple" and "orange" from the input file.
