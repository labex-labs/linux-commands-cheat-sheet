# Customize Column Output with Options

In this final step, we will explore more advanced options to customize the output of the `column` command.

Let's start by creating a file with some data that includes spaces within the fields:

```
$ cat > data.txt
Name        Age  City
"John Doe"  30   "New York"
"Jane Smith"  25   "Los Angeles"
"Bob Johnson" 40   "Chicago"
```

Now, let's use the `column` command to format this data:

```
$ column -t -s$'\t' data.txt
Name         Age  City
"John Doe"   30   "New York"
"Jane Smith" 25   "Los Angeles"
"Bob Johnson" 40   "Chicago"
```

In this example, we use the `-s$'\t'` option to specify that the fields are separated by tabs.

You can also use the `column` command to align the data within the columns:

```
$ column -t -s$'\t' -o20 data.txt
Name            Age  City
"John Doe"      30   "New York"
"Jane Smith"    25   "Los Angeles"
"Bob Johnson"   40   "Chicago"
```

Here, we use the `-o20` option to set the column width to 20 characters, and the data is aligned within the columns.

Another useful option is `-c`, which allows you to specify the number of columns to display:

```
$ column -t -s$'\t' -c50 data.txt
Name         Age  City
"John Doe"   30   "New York"
"Jane Smith" 25   "Los Angeles"
"Bob Johnson" 40   "Chicago"
```

In this example, we set the maximum number of columns to 50 using the `-c50` option.

You can also use the `column` command to transpose the data, effectively rotating the table:

```
$ column -t -s$'\t' -x data.txt
Name         "John Doe"  "Jane Smith"  "Bob Johnson"
Age          30          25            40
City         "New York"  "Los Angeles" "Chicago"
```

The `-x` option transposes the data, so the rows become columns and the columns become rows.

The `column` command provides many other options to customize the output, such as setting the column delimiter, adjusting the column width, and more. Experiment with these options to find the best way to format your tabular data.
