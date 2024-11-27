# Use Column to Format Tabular Data

In this step, we will explore more advanced usage of the `column` command to format tabular data.

Let's start by creating a more complex data file:

```
$ cat > data.csv
Name,Age,City,Occupation
John Doe,30,New York,Software Engineer
Jane Smith,25,Los Angeles,Marketing Manager
Bob Johnson,40,Chicago,Sales Representative
```

Now, let's use the `column` command to format this data in different ways:

```
$ column -t -s, data.csv
Name         Age  City         Occupation
John Doe     30   New York     Software Engineer
Jane Smith   25   Los Angeles  Marketing Manager
Bob Johnson  40   Chicago      Sales Representative
```

The `-t` option formats the data into a table, and the `-s,` option specifies that the fields are separated by commas.

You can also adjust the column width using the `-o` option:

```
$ column -t -s, -o20 data.csv
Name            Age  City            Occupation
John Doe        30   New York        Software Engineer
Jane Smith      25   Los Angeles     Marketing Manager
Bob Johnson     40   Chicago         Sales Representative
```

In this example, we set the column width to 20 characters using the `-o20` option.

Another useful option is `-c`, which allows you to specify the number of columns to display:

```
$ column -t -s, -c50 data.csv
Name         Age  City         Occupation
John Doe     30   New York     Software Engineer
Jane Smith   25   Los Angeles  Marketing Manager
Bob Johnson  40   Chicago      Sales Representative
```

Here, we set the maximum number of columns to 50 using the `-c50` option.

You can also use the `column` command to align the data within the columns:

```
$ column -t -s, -a data.csv
Name          Age  City           Occupation
John Doe      30   New York       Software Engineer
Jane Smith    25   Los Angeles    Marketing Manager
Bob Johnson   40   Chicago        Sales Representative
```

The `-a` option aligns the data within the columns.

The `column` command provides many other options to customize the output, such as setting the column delimiter, adjusting the column width, and more. Experiment with these options to find the best way to format your tabular data.
