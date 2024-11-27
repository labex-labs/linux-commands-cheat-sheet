# Customize the Output of paste Command

In this final step, we will learn how to customize the output of the `paste` command to suit our specific needs.

First, let's create another sample file:

```bash
echo -e "apple,red\nbanana,yellow\ncherry,purple" > fruits.csv
```

Now, let's say we want to combine the information from the `file1.txt`, `file2.txt`, and `fruits.csv` files, and separate the output fields with a semicolon (`;`) instead of the default tab character.

We can use the following command:

```bash
paste file1.txt file2.txt fruits.csv -d ";"
```

Example output:

```
Apple;Red;apple,red
Banana;Yellow;banana,yellow
Cherry;Purple;cherry,purple
```

In this example, we used the `-d ";"` option to specify a semicolon as the delimiter.

You can also use the `printf` command to further customize the output format:

```bash
paste file1.txt file2.txt fruits.csv | awk -F"\t" '{printf "%s; %s; %s\n", $1, $2, $3}'
```

Example output:

```
Apple; Red; apple,red
Banana; Yellow; banana,yellow
Cherry; Purple; cherry,purple
```

In this example, we used the `awk` command to split the input on the tab character (`-F"\t"`), and then used the `printf` command to format the output with the desired separator (`;`) and newline (`\n`).
