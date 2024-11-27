# Extracting Data from Text Files using gawk

In this step, you will learn how to use gawk to extract specific data from the text file you created in the previous step.

Let's start by printing the second column (Age) from the data.txt file:

```bash
gawk '{print $2}' ~/project/data.txt
```

Example output:

```
Age
25
30
35
```

In this command, `$2` represents the second column of the input data. gawk automatically splits each line into fields (columns) based on the delimiter (in this case, the comma).

To print the first and third columns (Name and City), you can use the following command:

```bash
gawk '{print $1, $3}' ~/project/data.txt
```

Example output:

```
Name City
John New York
Jane London
Bob Paris
```

You can also use the `-F` option to specify a different field separator. For example, to use a comma as the field separator:

```bash
gawk -F, '{print $1, $3}' ~/project/data.txt
```

Example output:

```
Name City
John New York
Jane London
Bob Paris
```

Additionally, gawk allows you to perform conditional processing. For example, to print only the names of people older than 30:

```bash
gawk -F, '$2 > 30 {print $1}' ~/project/data.txt
```

Example output:

```
Bob
```

In this command, `$2 > 30` is the condition, and `{print $1}` is the action performed for the lines that match the condition.

Try experimenting with different gawk commands to extract and manipulate the data in the `data.txt` file. The more you practice, the more comfortable you'll become with using gawk for text processing tasks.
