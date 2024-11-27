# Extract Specific Columns from a Text File

In this step, you will learn how to use the `cut` command to extract specific columns from a text file.

Let's start by creating a sample data file:

```bash
echo "Name,Age,City" > data.txt
echo "John,25,New York" >> data.txt
echo "Jane,30,London" >> data.txt
echo "Bob,35,Paris" >> data.txt
```

Now, let's extract the name and city columns from the file:

```bash
cut -d ',' -f 1,3 data.txt
```

Example output:

```
Name,City
John,New York
Jane,London
Bob,Paris
```

In this command:

- `-d ','` specifies the comma as the delimiter to split the input
- `-f 1,3` tells `cut` to extract the 1st and 3rd fields (columns)

You can also use the `--output-delimiter` option to change the delimiter in the output:

```bash
cut -d ',' -f 1,3 --output-delimiter=' - ' data.txt
```

Example output:

```
Name - City
John - New York
Jane - London
Bob - Paris
```

Now, let's try extracting a range of columns:

```bash
cut -d ',' -f 2-3 data.txt
```

Example output:

```
Age,City
25,New York
30,London
35,Paris
```

This command extracts the 2nd and 3rd columns (Age and City) from the data.
