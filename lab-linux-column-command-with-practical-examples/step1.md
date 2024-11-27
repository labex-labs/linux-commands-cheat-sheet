# Understand the Column Command

In this step, we will explore the `column` command in Linux, which is used to format tabular data. The `column` command takes input data and arranges it into a table-like format, making it easier to read and understand.

First, let's create a sample file with some tabular data:

```
$ cat > data.txt
Name,Age,City
John,30,New York
Jane,25,Los Angeles
Bob,40,Chicago
```

Now, let's use the `column` command to format this data:

```
$ column -t -s, data.txt
Name  Age  City
John  30   New York
Jane  25   Los Angeles
Bob   40   Chicago
```

The `-t` option tells the `column` command to format the data into a table, and the `-s,` option specifies that the fields are separated by commas.

You can also use the `column` command to format data from the command line directly:

```
$ echo -e "Name\tAge\tCity\nJohn\t30\tNew York\nJane\t25\tLos Angeles\nBob\t40\tChicago" | column -t
Name  Age  City
John  30   New York
Jane  25   Los Angeles
Bob   40   Chicago
```

In this example, we use the `echo -e` command to create the tabular data, and then pipe it to the `column` command with the `-t` option to format it into a table.

The `column` command provides several other options to customize the output, such as setting the column delimiter, adjusting the column width, and more. We'll explore these options in the next step.
