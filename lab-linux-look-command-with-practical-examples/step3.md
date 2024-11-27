# Combine the look Command with Other Linux Commands

In this final step, you will learn how to combine the `look` command with other Linux commands to perform more advanced text processing tasks.

One common use case is to combine `look` with `grep` to filter the output further. For example, let's say we want to find all words in the system dictionary that start with "app" and contain the letter "l":

```
look app | grep l
```

This will output:

```
apple
applaud
applause
applicable
application
```

You can also use the `look` command to find lines in a file that match a specific pattern, and then use other commands to perform additional operations on those lines.

For instance, let's say we have a file `employees.txt` with employee names and salaries, and we want to find all employees with a salary over $50,000:

```
look -f over ~/project/employees.txt | grep -E '[0-9]+\,[0-9]+' | awk -F, '{print $1, "$" $2}'
```

This will output:

```
John Doe $75,000
Jane Smith $62,500
```

Here's how it works:

1. `look -f over ~/project/employees.txt` searches the `employees.txt` file for lines starting with "over" (case-insensitive).
2. `grep -E '[0-9]+\,[0-9]+'` filters the output to only include lines with a number, comma, and another number (the salary).
3. `awk -F, '{print $1, "$" $2}'` formats the output to display the name and salary in a readable format.

The `look` command can be a powerful tool when combined with other Linux commands like `grep`, `awk`, `sed`, and `cut` to perform complex text processing tasks.
