# Understand the Basics of awk Command

In this step, you will learn the basics of the awk command in Linux. The awk command is a powerful text processing tool that can be used for a variety of tasks, such as data extraction, manipulation, and analysis.

First, let's understand the basic syntax of the awk command:

```
awk 'pattern {action}' file
```

The `pattern` is a condition that the awk command uses to select the lines from the input file that match the pattern. The `action` is the set of commands that awk will perform on the selected lines.

For example, let's create a file named `data.txt` with the following content:

```
John,25,Sales
Jane,30,Marketing
Bob,35,IT
```

Now, let's use awk to print the second field (age) of each line:

```
awk -F',' '{print $2}' data.txt
```

Example output:

```
25
30
35
```

In this example, the `-F','` option tells awk to use the comma `,` as the field separator. The `{print $2}` action tells awk to print the second field of each line.

You can also use awk to perform more complex operations, such as filtering and transforming data. For example, let's print the name and department of people older than 30:

```
awk -F',' '$2 > 30 {print $1, $3}' data.txt
```

Example output:

```
Jane Marketing
Bob IT
```

In this example, the `$2 > 30` pattern selects the lines where the second field (age) is greater than 30, and the `{print $1, $3}` action prints the first and third fields (name and department).
