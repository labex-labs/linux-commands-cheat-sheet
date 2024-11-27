# Combine egrep with Other Linux Commands

In this final step, you will learn how to combine the egrep command with other Linux commands to perform more advanced text processing tasks.

One common use case is to combine egrep with the `wc` (word count) command to count the number of lines that match a specific pattern. For example, to count the number of lines in the `data.txt` file that contain a number between 20 and 40, you can use the following command:

```
egrep -c '\b\d{2}\b' data.txt
```

Example output:

```
2
```

The `-c` option of egrep tells it to return the count of matching lines instead of the lines themselves.

You can also use egrep with the `sed` (stream editor) command to perform text substitutions. For instance, to replace all occurrences of "years" with "yrs" in the `data.txt` file, you can use the following command:

```
sed 's/years/yrs/g' <(egrep -o 'years' data.txt)
```

Example output:

```
John Doe, 30 yrs old
Jane Smith, 25 yrs old
Bob Johnson, 40 yrs old
```

The `egrep -o 'years' data.txt` command extracts all occurrences of the word "years" from the `data.txt` file, and the `sed 's/years/yrs/g'` command replaces them with "yrs".

Another useful combination is egrep with the `cut` command to extract specific fields from text data. For example, to extract the names from the `data.txt` file, you can use the following command:

```
egrep -o '\w+' data.txt | cut -d',' -f1
```

Example output:

```
John
Jane
Bob
```

The `egrep -o '\w+' data.txt` command extracts all word characters (letters, digits, and underscores) from the file, and the `cut -d',' -f1` command selects the first field (before the comma) from the output.

By combining egrep with other Linux commands, you can create powerful text processing workflows to handle a wide range of text manipulation tasks.
