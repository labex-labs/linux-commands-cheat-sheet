# Join Multiple Files with the join Command

In this final step, you will learn how to join multiple files using the `join` command.

Let's create one more sample file to join with the previous files:

```
$ cat locations.txt
1001 New York
1002 Los Angeles
1003 Chicago
1004 Miami
```

To join the `departments.txt`, `employees.txt`, and `locations.txt` files based on the first field (the employee ID), we can use the following command:

```
$ join -t ' ' -1 1 -2 1 departments.txt \
       | join -t ' ' -1 1 -2 1 - employees.txt \
       | join -t ' ' -1 1 -2 1 - locations.txt
1001 Sales John New York
1002 Marketing Jane Los Angeles
1003 IT Bob Chicago
1004 HR Alice Miami
```

In this command, we use the `join` command three times, chaining the output of the first two joins as the input for the third join. This allows us to merge all three files based on the common employee ID field.

The options used in this command are the same as the previous step:

- `-t ' '`: Use a space character as the delimiter.
- `-1 1`: Join on the first field (employee ID) in the first file.
- `-2 1`: Join on the first field (employee ID) in the second file.

The final output shows the merged records, with the corresponding department, employee name, and location for each employee ID.
