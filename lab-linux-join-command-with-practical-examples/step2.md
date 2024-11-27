# Join Two Files Based on Common Fields

In this step, you will learn how to join two files based on a common field using the `join` command.

Let's create two more sample files to demonstrate the process:

```
$ cat departments.txt
1001 Sales
1002 Marketing
1003 IT
1004 HR
```

```
$ cat employees.txt
1001 John
1002 Jane
1003 Bob
1004 Alice
```

To join the `departments.txt` and `employees.txt` files based on the first field (the employee ID), we can use the following command:

```
$ join -t ' ' -1 1 -2 1 departments.txt employees.txt
1001 Sales John
1002 Marketing Jane
1003 IT Bob
1004 HR Alice
```

The options used in this command are:

- `-t ' '`: Use a space character as the delimiter.
- `-1 1`: Join on the first field (employee ID) in the first file (`departments.txt`).
- `-2 1`: Join on the first field (employee ID) in the second file (`employees.txt`).

The output shows the merged records, with the corresponding department and employee name for each employee ID.
